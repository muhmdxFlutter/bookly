import 'package:bookly/constants.dart';
import 'package:flutter/services.dart';

statusBarTheme() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: KPrimaryColor,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: KPrimaryColor,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
}
