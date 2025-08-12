import 'package:bookly_app/core/utils/function/launch_url.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class ButtonAction extends StatelessWidget {
  final BookEntity bookEntity;

  const ButtonAction({super.key, required this.bookEntity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: CustomButton(
              text: 'Free',
              onPressed: () {},
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: getText(bookEntity),
              onPressed: () async {
                launchCustomUrl(context, bookEntity.previewLink);
              },
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              backgroundColor: const Color(0xffEF8252),
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookEntity bookEntity) {
    if (bookEntity.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
