import 'package:bookly_app_1/Core/utils/styles.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/widgets/Book_rating.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/widgets/books_action.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(
            imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.simplilearn.com%2Fbest-programming-languages-start-learning-today-article&psig=AOvVaw0DVsPZR8B_DpIBRik6NON0&ust=1730639663829000&source=images&cd=vfe&opi=89978449&ved=0CBcQjhxqFwoTCLiH66ndvYkDFQAAAAAdAAAAABAE',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text("Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              )),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          rating: 5,
          count: 250,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
