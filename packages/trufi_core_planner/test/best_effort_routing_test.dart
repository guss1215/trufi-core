import 'package:latlong2/latlong.dart';
import 'package:test/test.dart';
import 'package:trufi_core_planner/trufi_core_planner.dart';

// When no bus drops the rider within the normal walking radius of the
// destination, findRoutes falls back to "best effort": it surfaces the bus that
// leaves the rider closest to the destination and lets them walk the rest,
// instead of returning nothing.
void main() {
  // O ── bus L1 ──▶ drop  · · · walk · · ·▶ D
  // O=(0,0). D≈5.5 km east. The only route boards ~222 m from O and alights
  // ~1 km short of D — beyond the 500 m normal radius, within best-effort.
  const o = LatLng(0, 0);
  const d = LatLng(0, 0.05);
  const board = GtfsStop(id: 'BOARD', name: 'board', lat: 0, lon: 0.002);
  const drop = GtfsStop(id: 'DROP', name: 'drop', lat: 0, lon: 0.041);

  const route = GtfsRoute(
    id: 'r1',
    shortName: 'L1',
    longName: 'Line 1',
    type: GtfsRouteType.bus,
  );
  final data = GtfsData(
    agencies: const [],
    stops: const {'BOARD': board, 'DROP': drop},
    routes: const {'r1': route},
    trips: const {'t1': GtfsTrip(id: 't1', routeId: 'r1', serviceId: 's')},
    stopTimes: const [
      GtfsStopTime(tripId: 't1', stopId: 'BOARD', stopSequence: 1),
      GtfsStopTime(tripId: 't1', stopId: 'DROP', stopSequence: 2),
    ],
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

  test('best-effort surfaces the closest drop-off + a walk', () {
    final paths = service().findRoutes(origin: o, destination: d);
    expect(paths, isNotEmpty, reason: 'a bus gets within ~1 km; surface it');
    final p = paths.first;
    expect(p.segments.single.route.shortName, 'L1');
    expect(p.destinationWalkDistance, greaterThan(500),
        reason: 'best-effort drop-off is past the normal walk radius');
    expect(p.destinationWalkDistance, lessThan(1500));
  });

  test('best-effort can be disabled', () {
    final paths = service().findRoutes(
      origin: o,
      destination: d,
      bestEffortDestWalk: 500, // <= maxWalkDistance disables the fallback
    );
    expect(paths, isEmpty);
  });

  test('best-effort is skipped when a normal route exists', () {
    // Destination right at the drop stop: a normal (<=500 m) route exists, so
    // the short-walk result is returned, not a best-effort one.
    final paths = service()
        .findRoutes(origin: o, destination: const LatLng(0, 0.041));
    expect(paths, isNotEmpty);
    expect(paths.first.destinationWalkDistance, lessThan(500));
  });
}
