import 'package:bookly_app_1/Core/utils/styles.dart';
import 'package:bookly_app_1/Features/home/pressentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app_1/Features/searsh/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewsBody extends StatelessWidget {
const SearchViewsBody({super.key});

@override
Widget build(BuildContext context) {
    return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 30),
    child: Column(
        children: [
        CustomSearchTextField(),
        SizedBox(
            height:16 ,
        ),
        Text(
            'Search Result',
            style: Styles.textStyle18,
        ),
        SizedBox(
            height:16 ,
        ),
        Expanded(
            child: SearchResultListView()),
        ],
    ),
    );
}
}



class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 10),
          child:  BookListViewItem(),
        );
      },
    );
  }
}
