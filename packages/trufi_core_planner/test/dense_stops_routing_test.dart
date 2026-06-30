import 'package:latlong2/latlong.dart';
import 'package:test/test.dart';
import 'package:trufi_core_planner/trufi_core_planner.dart';

// Regression for the "no routes between nearby points" bug in dense feeds
// (e.g. Sana'a, whose stops are mapped from OSM — 30+ within a 500 m walk).
//
// findRoutes() snaps the origin/destination to candidate boarding stops. It
// used to keep only the 10 nearest, so when the stop a route actually serves
// sat just beyond that cut (but still within walking distance), the route was
// invisible and the query returned 0 itineraries. The fix raises the candidate
// cap (maxStopCandidates) so every stop within maxWalkDistance is considered.
void main() {
  // Origin cluster around (0,0); destination cluster ~2.2 km east at (0,0.02).
  // 1 degree of longitude at the equator ≈ 111.32 km, so 0.0001° ≈ 11 m.
  const origin = LatLng(0, 0);
  const dest = LatLng(0, 0.02);

  final stops = <String, GtfsStop>{};
  // 11 decoy stops hugging the origin (11–122 m), served by NO route.
  for (var i = 0; i < 11; i++) {
    final id = 'od$i';
    stops[id] = GtfsStop(id: id, name: id, lat: 0, lon: 0.0001 * (i + 1));
  }
  // 11 decoy stops hugging the destination, served by NO route.
  for (var i = 0; i < 11; i++) {
    final id = 'dd$i';
    stops[id] = GtfsStop(id: id, name: id, lat: 0, lon: 0.02 - 0.0001 * (i + 1));
  }
  // The ONLY routed stops sit ~333 m from each point — beyond the 10 nearest
  // decoys, but well within a 500 m walk.
  const board = GtfsStop(id: 'BOARD', name: 'board', lat: 0, lon: 0.003);
  const alight = GtfsStop(id: 'ALIGHT', name: 'alight', lat: 0, lon: 0.017);
  stops['BOARD'] = board;
  stops['ALIGHT'] = alight;

  const route = GtfsRoute(
    id: 'r1',
    shortName: 'L1',
    longName: 'Line 1',
    type: GtfsRouteType.bus,
  );
  const trip = GtfsTrip(id: 't1', routeId: 'r1', serviceId: 's');
  final stopTimes = const [
    GtfsStopTime(tripId: 't1', stopId: 'BOARD', stopSequence: 1),
    GtfsStopTime(tripId: 't1', stopId: 'ALIGHT', stopSequence: 2),
  ];

  final data = GtfsData(
    agencies: const [],
    stops: stops,
    routes: const {'r1': route},
    trips: const {'t1': trip},
    stopTimes: stopTimes,
    calendars: const {},
    calendarDates: const [],
    frequencies: const [],
    shapes: const {},
  );

  GtfsRoutingService service() => GtfsRoutingService(
        data: data,
        spatialIndex: GtfsSpatialIndex(data.stops),
        routeIndex: GtfsRouteIndex(data),
      );

  test('finds the route even when the boarding stop is past the 10 nearest', () {
    final paths = service().findRoutes(origin: origin, destination: dest);
    expect(paths, isNotEmpty,
        reason: 'a direct route exists; the boarding stop is within walking '
            'distance even though 11 closer decoy stops crowd it out');
    expect(paths.first.segments.single.route.shortName, 'L1');
  });

  test('reproduces the old failure when candidates are capped at 10', () {
    final paths =
        service().findRoutes(origin: origin, destination: dest, maxStopCandidates: 10);
    expect(paths, isEmpty,
        reason: 'with only the 10 nearest stops, all decoys, the routed stop '
            'is excluded and no itinerary is found');
  });
}
