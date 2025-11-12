import 'package:bookly/Features/home/presentation/views/widgets/medium_title.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_featured_list_view_you_can_like.dart';
import 'package:flutter/material.dart';

class SimilarYouCanLikeSection extends StatelessWidget {
  const SimilarYouCanLikeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MediumTitle(title: 'You can also like'),
        SimilarFeaturedListViewYouCanLike(),
      ],
    );
  }
}
