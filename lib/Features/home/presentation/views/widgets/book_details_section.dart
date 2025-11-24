import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_raiting.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .23),
          child: FeaturedListViewItem(
            imageUrl:
                bookModel.volumeInfo.imageLinks?.thumbnail ??
                'https://islandpress.org/files/default_book_cover_2015.jpg',
          ),
        ),
        const SizedBox(height: 20),
        Text(
          bookModel.volumeInfo.title ?? 'No Title',
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? 'No Authers',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 6),
        const BookRaiting(),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
