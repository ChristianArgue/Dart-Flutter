import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIconsPage extends StatelessWidget {
  const CustomIconsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          CupertinoIcons.alarm,
          // Icons.alarm,
          size: 100,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
