import 'package:bookly/Core/utils/service_locator.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manager/cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/data/repos/search_repo_impl.dart';
import 'package:bookly/Features/search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const routeToHomeView = '/HomeView';
  static const routeToBookDetailsView = '/BookDetailsView';
  static const routeToSearchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: routeToHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: routeToBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: routeToSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchBooksCubit(getIt.get<SearchRepoImpl>()),
          child:  SearchView(),
        ),
      ),
    ],
  );
}
