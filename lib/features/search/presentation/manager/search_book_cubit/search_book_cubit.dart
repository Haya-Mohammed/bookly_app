import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:bookly_app/features/search/presentation/manager/search_book_cubit/search_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  final SearchRepo searchRepo;

  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitialState());

  Future<void> fetchSearchBooks({required String searchText}) async {
    emit(SearchBooksLoadingState());

    var result = await searchRepo.fetchSearchBooks(text: searchText);

    result.fold(
      (failure) {
        emit(SearchBooksFailureState(failure.errMessage));
      },
      (books) {
        emit(SearchBooksSuccessState(books));
      },
    );
  }
}
