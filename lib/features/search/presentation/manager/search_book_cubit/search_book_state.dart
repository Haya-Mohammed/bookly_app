import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

abstract class SearchBooksState {}

class SearchBooksInitialState extends SearchBooksState {}

class SearchBooksLoadingState extends SearchBooksState {}

class SearchBooksSuccessState extends SearchBooksState {
  final List<BookEntity> books;

  SearchBooksSuccessState(this.books);
}

class SearchBooksFailureState extends SearchBooksState {
  final String errMessage;

  SearchBooksFailureState(this.errMessage);
}
