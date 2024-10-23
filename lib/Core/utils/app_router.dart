import 'package:bookly_app_1/Features/home/pressentation/views/book_details_view.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/home_view.dart';
import 'package:bookly_app_1/Features/searsh/presentation/views/search_view.dart';
import 'package:bookly_app_1/Features/splash/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract  class AppRouter{
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
    static const kSearchView = '/searchView';

  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>  const SplashView(),
      ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) =>  const SearchView(),
      ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) =>  const HomeView(),
      ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) =>  const BookDetailsView(),
      ),
  ],
);
}