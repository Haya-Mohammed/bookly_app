import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class SearchBooksState {}

class SearchBooksInitialState extends SearchBooksState {}

class SearchBooksLoadingState extends SearchBooksState {}

class SearchBooksSuccessState extends SearchBooksState {
  final List<BookModel> books;

  SearchBooksSuccessState(this.books);
}

class SearchBooksFailureState extends SearchBooksState {
  final String errMessage;

  SearchBooksFailureState(this.errMessage);
}
