import 'package:bookly_app_1/Core/utils/api_service.dart';
import 'package:bookly_app_1/Core/utils/app_router.dart';
import 'package:bookly_app_1/Core/utils/service_locator.dart';
import 'package:bookly_app_1/Features/home/pressentation/manger/featured_books_cubit.dart/featured_books_cubit.dart';
import 'package:bookly_app_1/Features/home/pressentation/manger/featured_books_cubit.dart/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/data/repos/home_repo_impl.dart';
import 'package:bookly_app_1/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            HomeRepoImpl(
              ApiService(
                Dio(),
              ),
            ),
          )..fetchNewesBooks(),
        ),
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
              getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
