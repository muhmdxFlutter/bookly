import 'package:bookly/Core/utils/app_router.dart';
import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_raiting.dart';
import 'package:bookly/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestListViewItem extends StatelessWidget {
  const NewestListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.routeToBookDetailsView);
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 10),
        height: 150,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: ClipRRect(
                borderRadius: const BorderRadiusGeometry.all(
                  Radius.circular(8),
                ),
                child: CachedNetworkImage(
                  imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.error, size: 35),
                ),
              ),

              // child: Container(
              //   decoration: BoxDecoration(
              //     borderRadius: const BorderRadius.all(Radius.circular(10)),
              //     color: Colors.red,
              //     image: DecorationImage(
              //       fit: BoxFit.fill,
              //       image: NetworkImage(bookModel.volumeInfo.imageLinks.thumbnail)
              //     ),
              //   ),
              // ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title ?? 'No Title',
                      style: Styles.textStyle20.copyWith(
                        fontFamily: KGTSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 0),
                  Opacity(
                    opacity: .7,
                    child: Text(
                      bookModel.volumeInfo.authors?[0]?? 'No Name',
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const BookRaiting(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
