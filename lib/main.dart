import 'package:bookly/Core/config/status_bar_theme.dart';
import 'package:bookly/Core/utils/app_router.dart';
import 'package:bookly/Core/utils/service_locator.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manager/cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/manager/cubit/newest_books_cubit.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  statusBarTheme();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                ..featchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImpl>())..featchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
