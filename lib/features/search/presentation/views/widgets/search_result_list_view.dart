import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:bookly_app/features/search/presentation/manager/search_book_cubit/search_book_cubit.dart';
import 'package:bookly_app/features/search/presentation/manager/search_book_cubit/search_book_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccessState) {
          return Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BooksListViewItem(bookModel: state.books[index]),
              ),
            ),
          );
        } else if (state is SearchBooksFailureState) {
          return const CustomErrorWidget(
            errMessage: 'Cannot Find Any Results!',
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
