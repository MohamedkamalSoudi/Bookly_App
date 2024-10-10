import 'package:bookly_app_1/Core/utils/styles.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBookListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

