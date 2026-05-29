import 'package:go_router/go_router.dart';
import 'package:sextatarea/Pages/ajuste_page.dart';
import 'package:sextatarea/Pages/configuracion_page.dart';
import 'package:sextatarea/Pages/home_page.dart';
import 'package:sextatarea/Pages/second_page.dart';

final GoRouter goRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(path: "/",builder: (context, state) => HomePage()),
    GoRoute(path: "/second",builder: (context, state) => SecondPage()),
    GoRoute(path: "/ajuste",builder: (context, state) => AjustePage()),
    GoRoute(path: "/ConfiguracionPage",builder: (context, state) => ConfiguracionPage()),
  ]
);
