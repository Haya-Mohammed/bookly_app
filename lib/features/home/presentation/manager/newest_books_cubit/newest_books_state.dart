import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

abstract class NewestBooksState {}

class NewestBooksInitialState extends NewestBooksState {}

class NewestBooksLoadingState extends NewestBooksState {}

class NewestBooksSuccessState extends NewestBooksState {
  final List<BookEntity> books;

  NewestBooksSuccessState(this.books);
}

class NewestBooksFailureState extends NewestBooksState {
  final String errMessage;

  NewestBooksFailureState(this.errMessage);
}
