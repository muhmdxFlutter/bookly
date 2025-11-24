import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    this.onPressed,
  });
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;

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
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.justify,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w900,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
