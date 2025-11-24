import 'package:bookly/Core/widgets/custom_button.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: CustomButton(
              text: 'Free',
              backgroundColor: Colors.white,
              textColor: KPrimaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                final Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {}
              },
              text: 'Preview',
              backgroundColor: const Color.fromARGB(255, 243, 74, 36),
              textColor: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
