import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 198, 196, 196),
              width: 2.0,
              style: BorderStyle.solid,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 255, 255, 255),
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
          suffixIcon: Opacity(
            opacity: .7,
            child: Icon(Icons.search, color: Colors.white, size: 25),
          ),
          hint: Opacity(
            opacity: .7,
            child: Text(
              'search',
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        cursorColor: const Color.fromARGB(255, 223, 224, 225),
        cursorWidth: 3,
      ),
    );
  }
}
