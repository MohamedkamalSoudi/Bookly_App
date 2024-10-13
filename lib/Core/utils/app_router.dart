import 'package:bookly_app_1/Features/home/pressentation/views/home_view.dart';
import 'package:bookly_app_1/Features/splash/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract  class AppRouter{
  static const kHomeView = '/homeView';
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>  const SplashView(),
      ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) =>  const HomeView(),
      ),
  ],
);
}