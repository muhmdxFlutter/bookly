import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
     this.borderRadius,
 
  } );
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius?  borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: 0,
          foregroundColor: textColor,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
             borderRadius:borderRadius ?? BorderRadius.circular(12)
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
