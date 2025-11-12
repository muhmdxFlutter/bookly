import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class MediumTitle extends StatelessWidget {
  const MediumTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 10, bottom: 15),
      child: Text(title, style: Styles.textStyle18.copyWith()),
    );
  }
}
