import 'package:flutter/material.dart';
import 'package:gahoodrpg_wiki/pages/progression/biome_description.dart';
import 'package:gahoodrpg_wiki/pages/progression/bordered_item.dart';
import 'package:gahoodrpg_wiki/pages/progression/boss_description.dart';
import 'package:gahoodrpg_wiki/pages/progression/materials_description.dart';
import 'package:gahoodrpg_wiki/pages/progression/mob_description.dart';
import 'package:gahoodrpg_wiki/pages/progression/progression_description.dart';

class Tier3Progression extends StatelessWidget {
  const Tier3Progression({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Text(
            'Tier 3',
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
            BorderedItem(
              child: BiomeDescription(
                biomes: {
                  'Jungle': 'jungle',
                  'Sparse Jungle': 'sparse_jungle',
                },
              ),
            ),
            BorderedItem(
              child: Column(
                children: [
                  ProgressionTitle(title: 'Recommended Class Level'),
                  ProgressionDescription(description: '5')
                ],
              ),
            ),
            BorderedItem(
              child: Column(
                children: [
                  ProgressionTitle(title: 'Recommended Gear'),
                  ProgressionDescription(description: '- Desert Steel Armor'),
                  ProgressionDescription(description: '- Auridium Armor'),
                  ProgressionDescription(description: '- Phoenix Armor'),
                  ProgressionDescription(description: '- Pharaoh Weapon'),
                  SizedBox(height: 5),
                ],
              ),
            ),
            MobsDescription(
                mobs: [
                  MobInfo('Poisonous Frog', 'poisonous_frog', true),
                  MobInfo('Camo Skeleton', 'camo_skeleton', true),
                  MobInfo('Jagarix', 'jagarix', true),
                  MobInfo('Chomplant', 'chomplant', true),
                ]
            ),
            MaterialsDescription(
                mats: [
                  MaterialInfo('Jungle Root', 'jungle_root', 'Found by chopping Jungle Root blocks with a tier 2 axe (pharaoh) or better.'),
                  MaterialInfo('Fernium', 'fernium', 'Found by mining fernium ore underground, or beating horde spawners.'),
                  MaterialInfo('Vinegold', 'vinegold_ingot', 'Found by mining vinegold ore underground.'),
                  MaterialInfo('Raw Jadestone', 'raw_jadestone', 'Found by mining jadestone ore underground.'),
                  MaterialInfo('Pantherite', 'pantherite_ingot', 'Forging Furnace recipe.'),
                  MaterialInfo('Jadestone', 'jadestone', 'Forging Furnace recipe.'),
                  MaterialInfo('Jagarix Spike', 'jagarix_spike', 'Dropped by Jagarix.'),
                  MaterialInfo('Jungle Bone', 'jungle_bone', 'Dropped by Camo Skeletons.'),
                  MaterialInfo('Frog Tongue', 'frog_tongue', 'Dropped by Poisonous Frogs.'),
                  MaterialInfo('Chomplant Leaf', 'chomplant_leaf', 'Dropped by Chomplants.'),
                  MaterialInfo('Runestone', 'runestone', 'Dropped by The Druid.'),
                ]
            ),
            BossDescription(bossName: 'The Druid', image: 'the_druid'),
          ],
        ),
      ],
    );
  }
}
