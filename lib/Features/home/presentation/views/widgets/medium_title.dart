import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class MediumTitle extends StatelessWidget {
  const MediumTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
            padding: EdgeInsets.only(top: 30,left: 10),
            child: Text(
              'Best Seller',
              style: Styles.mediumTitle,
            ),
          );
  }
}