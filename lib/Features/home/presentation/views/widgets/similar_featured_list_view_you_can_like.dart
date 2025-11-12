import 'package:bookly/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarFeaturedListViewYouCanLike extends StatelessWidget {
  const SimilarFeaturedListViewYouCanLike({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .12,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
