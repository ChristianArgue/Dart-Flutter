import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.size,
    required this.asset,
    this.borderWidth = 0,
  });

  final double size;
  final String asset;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(asset),
        ),
        border: Border.all(
          width: borderWidth,
          color: Colors.white,
        ),
      ),
    );
  }
}
