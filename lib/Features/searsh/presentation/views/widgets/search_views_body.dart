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
        ],
    ),
    );
}
}

