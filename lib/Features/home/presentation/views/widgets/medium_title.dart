import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class MediumTitle extends StatelessWidget {
  const MediumTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding:const EdgeInsets.only(top: 30,left: 10,bottom: 15),
            child: Text(
              'Best Seller',
              style: Styles.textStyle18.copyWith(fontFamily: KGTSectraFine,)
            ),
          );
  }
}