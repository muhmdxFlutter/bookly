import 'package:bookly/Core/utils/app_router.dart';
import 'package:bookly/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 0, top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo, height: 25),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.routeToSearchView);
            },
            icon: const Icon(
              Icons.search,
              size: 30,
              fontWeight: FontWeight.w100,
              color:  Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
  }
}
