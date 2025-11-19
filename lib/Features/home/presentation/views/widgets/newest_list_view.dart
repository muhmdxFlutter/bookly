import 'package:bookly/Features/home/presentation/views/widgets/newest_list_view_item.dart';
import 'package:flutter/material.dart';

class NewestSliverList extends StatelessWidget {
  const NewestSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: NewestListViewItem(),
        ),
        childCount: 10,
      ),
    );
  }
}
//
// class NewestListView extends StatelessWidget {
//   const NewestListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       physics: const NeverScrollableScrollPhysics(),
//       padding: EdgeInsets.zero,
//       shrinkWrap: false,
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.symmetric(vertical: 5),
//           child: const NewestListViewItem(),
//         );
//       },
//     );
//   }
// }
