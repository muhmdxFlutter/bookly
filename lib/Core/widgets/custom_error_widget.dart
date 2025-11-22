import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'ERROR',
        style: Styles.textStyle30.copyWith(color: Colors.red),
      ),
    );
  }
}
