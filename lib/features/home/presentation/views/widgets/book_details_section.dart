import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import 'botton_actions.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  final BookEntity bookEntity;

  const BookDetailsSection({super.key, required this.bookEntity});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookImage(
            imageUrl: bookEntity.image ?? '',
          ),
        ),
        const SizedBox(height: 43),
        Text(
          bookEntity.title ?? '',
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Text(
          bookEntity.authorName ?? '',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontStyle: FontStyle.italic,
                color: Colors.white.withOpacity(0.7),
              ),
        ),
        const SizedBox(height: 12),
        const BookRating(
          averageRating: 4,
          ratingCount: 3459,
        ),
        const SizedBox(height: 30),
        ButtonAction(bookEntity: bookEntity),
      ],
    );
  }
}
