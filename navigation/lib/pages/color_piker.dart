import 'package:flutter/material.dart';

class ColorPiker extends StatelessWidget {
  const ColorPiker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (_, index) {
          final color = Colors.primaries[index];
          return GestureDetector(
            onTap: () {
              Navigator.pop(
                context,
                color,
              );
            },
            child: Container(
              height: 70,
              color: color,
            ),
          );
        },
        itemCount: Colors.primaries.length,
      ),
    );
  }
}
