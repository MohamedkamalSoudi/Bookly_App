import 'package:bookly_app_1/Core/widgets/custom_error_widget.dart';
import 'package:bookly_app_1/Core/widgets/custom_loading_indIcator.dart';
import 'package:bookly_app_1/Features/home/pressentation/manger/smilar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .15,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(
              imageUrl:
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.simplilearn.com%2Fbest-programming-languages-start-learning-today-article&psig=AOvVaw0DVsPZR8B_DpIBRik6NON0&ust=1730639663829000&source=images&cd=vfe&opi=89978449&ved=0CBcQjhxqFwoTCLiH66ndvYkDFQAAAAAdAAAAABAE',
            ),
          );
        }),
  );
} else if (state is SimilarBooksFailure){
  return CustomErrorWidget(errMessage: state.errMessage);
} else {
  return const CustomLoadingIndicator();
}
      },
    );
  }
}
