import 'package:flutter/material.dart';
import 'package:gahoodrpg_wiki/pages/progression/bordered_item.dart';
import 'package:gahoodrpg_wiki/pages/progression/progression_description.dart';

class BossDescription extends StatelessWidget {
  final String bossName;
  final String image;

  const BossDescription({super.key, required this.bossName, required this.image});

  @override
  Widget build(BuildContext context) {
    return BorderedItem(
      child: Column(
        children: [
          const ProgressionTitle(title: 'Boss'),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              'assets/images/mobs/$image.png',
              height: 250,
            ),
          ),
          ProgressionDescription(description: bossName),
        ],
      ),
    );
  }
}
