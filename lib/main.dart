import 'package:bookly_app_1/Features/splash/views/splash_view.dart';
import 'package:bookly_app_1/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}
class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:kPrimaryColor,
    textTheme:  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
    ),
      home:const SplashView(),
    );
  }
}
