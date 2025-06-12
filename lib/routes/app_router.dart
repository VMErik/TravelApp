import 'package:go_router/go_router.dart';
import 'package:travelapp/models/location.dart';
import 'package:travelapp/pages/discover.dart';
import 'package:travelapp/pages/home.dart';
import 'package:travelapp/pages/location.dart';
import 'package:travelapp/pages/test.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => TestPage()),
    GoRoute(path: '/discover', builder: (context, state) => DiscoverPage()),
    GoRoute(
      path: '/location',
      builder: (context, state) {
        final location = state.extra as Location;
        return LocationPage(location: location);
      },
    ),
  ],
);
