import 'package:bookly/Features/home/presentation/views/widgets/medium_title.dart';
import 'package:bookly/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SerchViewBody extends StatelessWidget {
  const SerchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    const mediumTitle = MediumTitle(title: 'Results');
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [CustomSearchTextField(), mediumTitle, SearchResultListView()],
    );
  }
}
