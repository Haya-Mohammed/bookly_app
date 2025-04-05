import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class CustomBookImage extends StatelessWidget {
  final String imageUrl;
  const CustomBookImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        errorWidget: (context, url, error) => const Icon(Icons.error_outline),
        fit: BoxFit.fill,
      ),
    );
  }
}
