import 'package:bookly_app_1/Core/errors/failures.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/data/models/book_model/book_model.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements  HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}