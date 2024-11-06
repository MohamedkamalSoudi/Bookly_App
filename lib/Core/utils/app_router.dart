import 'package:bookly_app_1/Core/utils/service_locator.dart';
import 'package:bookly_app_1/Features/home/pressentation/manger/smilar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/book_details_view.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/data/models/book_model/book_model.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/data/repos/home_repo_impl.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/home_view.dart';
import 'package:bookly_app_1/Features/searsh/presentation/views/search_view.dart';
import 'package:bookly_app_1/Features/splash/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child:  BookDetailsView(
            bookModel:state.extra as BookModel ,
          ),
        ),
      ),
    ],
  );
}
