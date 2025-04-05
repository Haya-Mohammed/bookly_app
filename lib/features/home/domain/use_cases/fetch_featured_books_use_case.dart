import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/errors/use_case.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int param = 0]) async {
    //4A
    // check permission
    return await homeRepo.fetchFeaturedBooks(pageNumber: param); //4B
  }
}
