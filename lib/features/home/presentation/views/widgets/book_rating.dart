import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class BookRating extends StatelessWidget {
  final int averageRating;
  final int ratingCount;
  const BookRating({super.key, required this.averageRating, required this.ratingCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFFFDD4F),
          size: 14,
        ),
        const SizedBox(width: 6.3),
        Text(
          averageRating.toDouble().toString(),
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
        ),
        const SizedBox(width: 5),
        Text(
          '($ratingCount)',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white.withOpacity(0.5),
              ),
        ),
      ],
    );
  }
}
