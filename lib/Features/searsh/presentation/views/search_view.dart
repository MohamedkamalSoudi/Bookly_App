import 'package:bookly_app_1/Features/searsh/presentation/views/widgets/search_views_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchViewsBody()),
    );
  }
}
