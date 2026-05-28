import 'package:go_router/go_router.dart';
import 'package:sextatarea/Pages/home_page.dart';
import 'package:sextatarea/Pages/second_page.dart';

final GoRouter goRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(path: "/",builder: (context, state) => HomePage()),
    GoRoute(path: "/second",builder: (context, state) => SecondPage()),
  ]
);
