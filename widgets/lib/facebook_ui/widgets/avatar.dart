import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

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
    final fromNetwork =
        asset.startsWith('http://') || asset.startsWith('https://');

    final imageProvider =
        fromNetwork ? CachedNetworkImageProvider(asset) : AssetImage(asset);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: imageProvider as ImageProvider, fit: BoxFit.cover),
        border: Border.all(
          width: borderWidth,
          color: Colors.white,
        ),
      ),
    );
  }
}
