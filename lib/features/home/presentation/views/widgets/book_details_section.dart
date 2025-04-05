import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import 'botton_actions.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsSection({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 43),
        Text(
          bookModel.volumeInfo?.title ?? '',
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Text(
          bookModel.volumeInfo?.authors[0] ?? '',
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
        ButtonAction(bookModel: bookModel),
      ],
    );
  }
}
