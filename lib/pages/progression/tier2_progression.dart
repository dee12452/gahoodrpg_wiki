import 'package:flutter/material.dart';
import 'package:gahoodrpg_wiki/pages/progression/biome_description.dart';
import 'package:gahoodrpg_wiki/pages/progression/bordered_item.dart';
import 'package:gahoodrpg_wiki/pages/progression/boss_description.dart';
import 'package:gahoodrpg_wiki/pages/progression/materials_description.dart';
import 'package:gahoodrpg_wiki/pages/progression/mob_description.dart';
import 'package:gahoodrpg_wiki/pages/progression/progression_description.dart';

class Tier2Progression extends StatelessWidget {
  const Tier2Progression({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Text(
            'Tier 2',
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
                  'Desert': 'desert',
                  'Badlands': 'badlands',
                  'Savanna': 'savanna',
                },
              ),
            ),
            BorderedItem(
              child: Column(
                children: [
                  ProgressionTitle(title: 'Recommended Class Level'),
                  ProgressionDescription(description: '3')
                ],
              ),
            ),
            BorderedItem(
              child: Column(
                children: [
                  ProgressionTitle(title: 'Recommended Gear'),
                  ProgressionDescription(description: '- Bronze Armor'),
                  ProgressionDescription(description: '- Silver Armor'),
                  ProgressionDescription(description: '- Amethyst Armor'),
                  ProgressionDescription(description: '- Bronze Weapon'),
                  ProgressionDescription(description: '- Silver Weapon'),
                  ProgressionDescription(description: '- Amethyst Weapon'),
                  SizedBox(height: 5),
                ],
              ),
            ),
            MobsDescription(
                mobs: [
                  MobInfo('Scorpion', 'scorpion', true),
                  MobInfo('Cave Scorpion', 'cave_scorpion', true),
                  MobInfo('Sphinx', 'sphinx', true),
                  MobInfo('Desert Creeper', 'desert_creeper', true),
                  MobInfo('Archeologist', 'archeologist', false),
                  MobInfo('Crazed Archeologist', 'crazed_archeologist', true),
                ]
            ),
            MaterialsDescription(
                mats: [
                  MaterialInfo('Red Saguaro', 'red_saguaro', 'Found by cutting down Red Saguaro cacti with a tier 1 axe (bronze, silver, or amethyst) or better.'),
                  MaterialInfo('Emberstone', 'emberstone', 'Found by mining emberstone ore underground, or beating horde spawners.'),
                  MaterialInfo('Sunfire Dust', 'sunfire_dust', 'Found by mining sunfire ore underground, or by Crazed Archeologists and Cave Scorpions.'),
                  MaterialInfo('Carnelian', 'carnelian', 'Found by mining carnelian ore underground, or dropped by Crazed Archeologists and Cave Scorpions.'),
                  MaterialInfo('Platinum', 'platinum_ingot', 'Found by mining platinum ore underground.'),
                  MaterialInfo('Phoenixite', 'phoenixite', 'Trade with Archeologists.'),
                  MaterialInfo('Desert Steel', 'desert_steel_ingot', 'Forging Furnace recipe.'),
                  MaterialInfo('Auridium', 'auridium_ingot', 'Forging Furnace recipe.'),
                  MaterialInfo('Desert Gunpowder', 'desert_gunpowder', 'Dropped by Desert Creepers.'),
                  MaterialInfo('Ancient Brick', 'ancient_brick', 'Dropped by Sphinxes.'),
                  MaterialInfo('Scorpion Venom', 'scorpion_venom', 'Dropped by Scorpions.'),
                  MaterialInfo('Pyramid Stone', 'pyramid_stone', 'Dropped by The Pharaoh.'),
                ]
            ),
            BossDescription(bossName: 'The Pharaoh', image: 'the_pharaoh'),
          ],
        ),
      ],
    );
  }
}
