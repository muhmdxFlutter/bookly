import 'package:bookly/Core/utils/app_router.dart';
import 'package:bookly/Core/widgets/custom_error_widget.dart';
import 'package:bookly/Core/widgets/custom_loading_indicator.dart';
import 'package:bookly/Features/home/presentation/manager/cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .333,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.routeToBookDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: FeaturedListViewItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                          'https://islandpress.org/files/default_book_cover_2015.jpg',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
