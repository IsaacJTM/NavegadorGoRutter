
import 'package:flutter/material.dart';
import 'package:sextatarea/Pages/home_page.dart';
import 'package:sextatarea/gorutter/app_router.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Clase GoRouter",
      routerConfig: goRouter
    );
  }
}