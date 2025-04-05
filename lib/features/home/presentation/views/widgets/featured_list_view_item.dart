import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  final String imageUrl;
  const FeaturedListViewItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomBookImage(imageUrl: imageUrl),
          Container(
            margin: const EdgeInsets.all(7),
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.2),
            ),
            child: const Icon(
              Icons.play_arrow,
              size: 14,
            ),
          ),
        ],
      ),
    );
  }
}
