import 'package:go_router/go_router.dart';
import 'package:travelapp/models/location.dart';
import 'package:travelapp/pages/discover.dart';
import 'package:travelapp/pages/home.dart';
import 'package:travelapp/pages/location.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state)=> OnBoardingPage()),
    GoRoute(path: '/discover', builder: (context,state)=> DiscoverPage()),
    GoRoute(path: '/location', builder: (context,state) {
      final location = state.extra as Location;
      return LocationPage(location : location) ;
    }),
  ]
);