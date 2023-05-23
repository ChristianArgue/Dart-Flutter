import 'package:flutter/material.dart';

import 'package:navigation/pages/color_piker.dart';
import 'package:navigation/pages/counter_page.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/pages/menu_page.dart';
import 'package:navigation/pages/splash_page.dart';

import 'pages/dialogs_page.dart';
import 'routes.dart';

T getArguments<T>(BuildContext context) {
  return ModalRoute.of(context)!.settings.arguments as T;
}

Map<String, Widget Function(BuildContext)> get appRoute {
  return {
    Routes.home: (context) => const MenuPage(),
    Routes.counter: (context) => const CounterPage(),
    Routes.login: (context) {
      final email = getArguments<String>(context);
      return LoginPage(email: email);
    },
    Routes.splash: (context) => const SplashPage(),
    Routes.pickColor: (context) => const ColorPiker(),
    Routes.dialogs: (context) => const DialogsPage(),
  };
}
