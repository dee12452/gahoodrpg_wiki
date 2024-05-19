import 'package:flutter/material.dart';

class BiomeDescription extends StatelessWidget {
  final Map<String, String> biomes;

  const BiomeDescription({super.key, required this.biomes});

  @override
  Widget build(BuildContext context) {
    final widgets = biomes.entries.map((e) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/biomes/${e.value}.png'),
            const SizedBox(
              height: 5,
            ),
            Text(
              e.key,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, color: Colors.white70),
            ),
          ],
        ),
      );
    }).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Biomes',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        Wrap(
          children: widgets,
        )
      ],
    );
  }
}