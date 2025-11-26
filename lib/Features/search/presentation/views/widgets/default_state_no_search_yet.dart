import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class DefaultStateNoSearchYet extends StatelessWidget {
  const DefaultStateNoSearchYet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Discover books you’ll enjoy', style: Styles.textStyle14),
    );
  }
}
