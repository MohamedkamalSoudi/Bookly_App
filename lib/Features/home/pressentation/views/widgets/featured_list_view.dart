import 'package:bookly_app_1/Core/widgets/custom_error_widget.dart';
import 'package:bookly_app_1/Core/widgets/custom_loading_indIcator.dart';
import 'package:bookly_app_1/Features/home/pressentation/manger/featured_books_cubit.dart/featured_books_cubit.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .3,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomBookImage(),
          );
        }),
  );
      } else if (state is FeaturedBooksFailure)
        {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
