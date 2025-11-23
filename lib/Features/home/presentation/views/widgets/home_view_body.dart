import 'package:bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/medium_title.dart';
import 'package:bookly/Features/home/presentation/views/widgets/newest_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              MediumTitle(title: 'Newest Books'),
            ],
          ),
        ),
          NewestSliverList(),
        // SliverFillRemaining(
        //   child: Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 10),
        //     child: NewestListView(),
        //   ),
        // ),
      ],
    );
  }
}
