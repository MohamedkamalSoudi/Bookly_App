import 'package:bookly_app_1/Features/home/pressentation/views/data/models/book_model/book_model.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewesBooks () async {
    emit(NewsetBooksLoading());
  var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure)
    {
      emit(NewsetBooksFailure(errMessage: failure.message));
    }, (books)
    {
      emit(NewsetBooksSuccess(books:books));
    });
  }
}
