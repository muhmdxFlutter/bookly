
import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: BestSellerListViewItem(),
        ),
        childCount: 10,
      ),
    );
  }
}
//
// class BestSellerListView extends StatelessWidget {
//   const BestSellerListView({super.key});

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
//           child: const BestSellerListViewItem(),
//         );
//       },
//     );
//   }
// }
