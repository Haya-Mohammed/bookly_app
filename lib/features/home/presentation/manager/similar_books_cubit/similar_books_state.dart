import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

abstract class SimilarBooksState {}

class SimilarBooksInitialState extends SimilarBooksState {}

class SimilarBooksLoadingState extends SimilarBooksState {}

class SimilarBooksSuccessState extends SimilarBooksState {
  final List<BookEntity> books;

  SimilarBooksSuccessState(this.books);
}

class SimilarBooksFailureState extends SimilarBooksState {
  final String errMessage;

  SimilarBooksFailureState(this.errMessage);
}
