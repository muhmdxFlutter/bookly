import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: KPrimaryColor),
        debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
    
  }
} 