import 'package:flutter/material.dart';

import 'package:widgets/facebook_ui/facebook_ui.dart';
// import 'package:widgets/widgets/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: FacebookPage(),
    );
  }
}
