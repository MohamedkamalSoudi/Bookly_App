import 'package:bookly_app_1/Core/errors/failures.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure ,List<BookModel>>>fetchNewsetBooks();
  Future<Either<Failure ,List<BookModel>>>fetchFeaturedBooks();
  Future<Either<Failure ,List<BookModel>>>fetchSimilarBooks(
    {required String category});
}