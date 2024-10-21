import 'package:bookly_app_1/Core/utils/styles.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/widgets/simllar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
        style: Styles.textStyle14.copyWith(
          fontWeight: FontWeight.w600,
        ),
        ),
          const SizedBox(height: 16,),
          const SimilarBooksListview(),
      ],
    );
  }
}