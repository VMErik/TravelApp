import 'package:go_router/go_router.dart';
import 'package:travelapp/pages/discover.dart';
import 'package:travelapp/pages/home.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state)=> OnBoardingPage()),
    GoRoute(path: '/discover', builder: (context,state)=> DiscoverPage())
  ]
);