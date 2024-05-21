import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gahoodrpg_wiki/pages/progression/biome_description.dart';
import 'package:gahoodrpg_wiki/pages/progression/bordered_item.dart';
import 'package:gahoodrpg_wiki/pages/progression/mob_description.dart';
import 'package:gahoodrpg_wiki/pages/progression/progression_description.dart';

class Tier1Progression extends StatelessWidget {
  const Tier1Progression({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Text(
            'Tier 1',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white70),
          )
        ],
      ),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const BorderedItem(
              child: BiomeDescription(
                biomes: {
                  'Plains': 'plains',
                  'Forest': 'forest',
                  'River': 'river',
                },
              ),
            ),
            const BorderedItem(
              child: Column(
                children: [
                  ProgressionTitle(title: 'Recommended Class Level'),
                  ProgressionDescription(description: '0')
                ],
              ),
            ),
            const MobsDescription(
                mobs: {
                  'Enraged Creeper': 'enraged_creeper',
                  'Enraged Skeleton': 'enraged_skeleton',
                  'Enraged Spider': 'enraged_spider',
                  'Enraged Zombie': 'enraged_zombie',
                }
            ),
            const BorderedItem(
                child: Column(
              children: [
                ProgressionTitle(title: 'Recommended Gear'),
              ],
            )),
            const BorderedItem(
                child: Column(
              children: [
                ProgressionTitle(title: 'Blocks'),
              ],
            )),
            const BorderedItem(
                child: Column(
              children: [
                ProgressionTitle(title: 'Boss'),
              ],
            )),
          ],
        ),
      ],
    );
  }
}
