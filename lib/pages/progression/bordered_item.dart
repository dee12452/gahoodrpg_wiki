import 'package:flutter/material.dart';

class BorderedItem extends StatelessWidget {
  final Widget child;

  const BorderedItem({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.deepPurple.shade800)),
      width: double.infinity,
      child: child,
    );
  }
}
