import 'package:flutter/material.dart';
import 'package:gahoodrpg_wiki/pages/progression/biome_description.dart';
import 'package:gahoodrpg_wiki/pages/progression/bordered_item.dart';
import 'package:gahoodrpg_wiki/pages/progression/boss_description.dart';
import 'package:gahoodrpg_wiki/pages/progression/materials_description.dart';
import 'package:gahoodrpg_wiki/pages/progression/mob_description.dart';
import 'package:gahoodrpg_wiki/pages/progression/progression_description.dart';

class Tier1Progression extends StatelessWidget {
  const Tier1Progression({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Row(
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
            BorderedItem(
              child: BiomeDescription(
                biomes: {
                  'Plains': 'plains',
                  'Forest': 'forest',
                  'River': 'river',
                },
              ),
            ),
            BorderedItem(
              child: Column(
                children: [
                  ProgressionTitle(title: 'Recommended Class Level'),
                  ProgressionDescription(description: '0')
                ],
              ),
            ),
            BorderedItem(
              child: Column(
                children: [
                  ProgressionTitle(title: 'Recommended Gear'),
                  ProgressionDescription(description: '- Diamond Armor'),
                  ProgressionDescription(description: '- Gold Armor'),
                  ProgressionDescription(description: '- Diamond Weapon'),
                  SizedBox(height: 5,),
                ],
              ),
            ),
            MobsDescription(
                mobs: [
                  MobInfo('Enraged Creeper', 'enraged_creeper', true),
                  MobInfo('Enraged Skeleton', 'enraged_skeleton', true),
                  MobInfo('Enraged Spider', 'enraged_spider', true),
                  MobInfo('Enraged Zombie', 'enraged_zombie', true),
                ]
            ),
            MaterialsDescription(
                mats: [
                  MaterialInfo('Ancient Oak Log', 'ancient_oak_log', 'Found by cutting down Ancient Oak trees with an axe.'),
                  MaterialInfo('Glimmerite', 'glimmerite', 'Found by mining glimmerite ore underground, or from horde spawners.'),
                  MaterialInfo('Lead', 'lead_ingot', 'Found by mining lead ore underground.'),
                  MaterialInfo('Tin', 'tin_ingot', 'Found by mining tin ore underground.'),
                  MaterialInfo('Amethyst', 'amethyst', 'Forging Furnace recipe.'),
                  MaterialInfo('Bronze', 'bronze_ingot', 'Forging Furnace recipe.'),
                  MaterialInfo('Silver', 'silver_ingot', 'Forging Furnace recipe.'),
                  MaterialInfo('Rage Crystal', 'rage_crystal', 'Forging Furnace recipe.'),
                  MaterialInfo('Zombie Heart', 'zombie_heart', 'Dropped by Enraged Zombie.'),
                  MaterialInfo('Spider Venom', 'spider_venom', 'Dropped by Enraged Spider.'),
                  MaterialInfo('Bone Fragment', 'bone_fragment', 'Dropped by Enraged Skeleton.'),
                  MaterialInfo('Rage Essence', 'rage_essence', 'Dropped by The Enraged.'),
                ]
            ),
            BossDescription(bossName: 'The Enraged', image: 'the_enraged'),
          ],
        ),
      ],
    );
  }
}
