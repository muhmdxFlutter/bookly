import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_raiting.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/medium_title.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_featured_list_view_you_can_like.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: FeaturedListViewItem(),
        ),
        const SizedBox(height: 20),
        Text('The Jungle Book', style: Styles.textStyle30),
        const SizedBox(height: 4),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 6),
        BookRaiting(),
        const SizedBox(height: 37),
        BooksAction(),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: MediumTitle(title: 'You can also like'),
        ),
        SimilarFeaturedListViewYouCanLike(),
      ],
    );
  }
}
