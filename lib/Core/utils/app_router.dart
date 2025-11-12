import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
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
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: routeToSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
