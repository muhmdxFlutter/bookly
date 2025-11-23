import 'package:bookly/Core/widgets/custom_error_widget.dart';
import 'package:bookly/Core/widgets/custom_loading_indicator.dart';
import 'package:bookly/Features/home/presentation/manager/cubit/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/newest_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestSliverList extends StatelessWidget {
  const NewestSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: NewestListViewItem(bookModel: state.books[index]),
              );
            }, childCount: 10),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(child: CustomErrorWidget(errMessage: state.errMessage,));
        } else {
          return const SliverToBoxAdapter(child: CustomLoadingIndicator());
        }
      },
    );
  }
}

// class NewestListView extends StatelessWidget {
//   const NewestListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<NewestBooksCubit, NewestBooksState>(
//       builder: (context, state) {
//         if (state is NewestBooksSuccess) {
//           return ListView.builder(
//             physics: const NeverScrollableScrollPhysics(),
//             padding: EdgeInsets.zero,
//             // shrinkWrap: true,
//             itemCount: state.books.length,
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 5),
//                 child: NewestListViewItem(bookModel: state.books[index]),
//               );
//             },
//           );
//         } else if (state is NewestBooksFailure) {
//           return const CustomErrorWidget();
//         } else {
//           return const CustomLoadingIndicator();
//         }
//       },
//     );
//   }
// }
