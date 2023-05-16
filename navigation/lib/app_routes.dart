import 'package:flutter/material.dart';
import 'package:navigation/pages/counter_page.dart';
import 'package:navigation/pages/menu_page.dart';

import 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoute {
  return {
    '/': (context) => const MenuPage(),
    Routes.counter: (context) => const CounterPage()
  };
}
