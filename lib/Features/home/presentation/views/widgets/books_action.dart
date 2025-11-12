import 'package:bookly/Core/widgets/custom_button.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99 ₤',
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
              text: 'Free Preview',
              backgroundColor: const Color.fromARGB(255, 243, 74, 36),
              textColor: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(
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
