import 'package:bookly_app/core/utils/function/launch_url.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class ButtonAction extends StatelessWidget {
  final BookModel bookModel;
  const ButtonAction({super.key, required this.bookModel});

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
              text: getText(bookModel),
              onPressed: () async {
                launchCustomUrl(context, bookModel.volumeInfo?.previewLink!);
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

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo?.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
