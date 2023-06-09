import 'package:flutter/material.dart';

import 'package:navigation/app_routes.dart';

import 'routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: appRoute,
      initialRoute: Routes.splash,
    );
  }
}
