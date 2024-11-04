import 'package:bookly_app_1/Core/widgets/custom_error_widget.dart';
import 'package:bookly_app_1/Core/widgets/custom_loading_indIcator.dart';
import 'package:bookly_app_1/Features/home/pressentation/manger/featured_books_cubit.dart/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
  return ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    padding: EdgeInsets.zero,
    itemCount: state.books.length,
    itemBuilder: (context, index) {
      return  Padding(
        padding:const  EdgeInsets.symmetric(vertical: 10),
        child: BookListViewItem(
          bookModel: state.books[index],
        ),
      );
    },
  );
  }else if (state is NewsetBooksFailure){
    return CustomErrorWidget(errMessage: state.errMessage);
  }else {
    return const CustomLoadingIndicator();
  }
      },
    );
  }
}
