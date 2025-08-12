import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import 'book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookEntity bookEntity;

  const BookDetailsViewBody({super.key, required this.bookEntity});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const BookDetailsAppbar(),
                BookDetailsSection(bookEntity: bookEntity),
                const SizedBox(height: 50),
                const Spacer(),
                const SimilarBooksSection(),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
