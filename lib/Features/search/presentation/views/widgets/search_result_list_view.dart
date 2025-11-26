import 'package:bookly/Core/widgets/custom_error_widget.dart';
import 'package:bookly/Core/widgets/custom_loading_indicator.dart';
import 'package:bookly/Features/search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:bookly/Features/search/presentation/views/widgets/default_state_no_search_yet.dart';
import 'package:bookly/Features/search/presentation/views/widgets/no_result.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_result_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksInitial) {
          return const DefaultStateNoSearchYet();
        }
        if (state is SearchBooksSuccess) {
          return Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SearchResultListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              },
            ),
          );
        } else if (state is SearchBooksFailure) {
          if (state.errMessage == 'Missing query.') {
            return const NoResult();
          }
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
