import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.size,
    required this.asset,
  });

  final double size;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          size * 0.5,
        ),
        child: Image.asset(
          asset,
          width: size,
          height: size,
        ),
      ),
    );
  }
}
