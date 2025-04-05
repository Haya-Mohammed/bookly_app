import 'package:bookly_app/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:bookly_app/features/home/presentation/manager/Newest_books_cubit/Newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewestBooksUseCase)
      : super(NewestBooksInitialState());

  final FetchNewestBooksUseCase fetchNewestBooksUseCase;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoadingState());
    var result = await fetchNewestBooksUseCase.call();

    result.fold(
      (failure) => emit(NewestBooksFailureState(failure.errMessage)),
      (books) => emit(NewestBooksSuccessState(books)),
    );
  }
}
