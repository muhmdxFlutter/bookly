import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
      child: TextField(
        decoration: InputDecoration(
          isDense: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 198, 196, 196),
              width: 2.0,
              style: BorderStyle.solid,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 255, 255, 255),
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
          suffixIcon: const Opacity(
            opacity: .7,
            child: Icon(Icons.search, color: Colors.white, size: 25),
          ),
          hint: Opacity(
            opacity: .7,
            child: Text(
              'search',
              style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        cursorColor: const Color.fromARGB(255, 223, 224, 225),
        cursorWidth: 2,
      ),
    );
  }
}
