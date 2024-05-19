import 'package:flutter/material.dart';

class ProgressionDescription extends StatelessWidget {
  final String description;

  const ProgressionDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14, color: Colors.white70),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
