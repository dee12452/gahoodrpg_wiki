import 'package:flutter/material.dart';
import 'package:gahoodrpg_wiki/pages/progression/biome_description.dart';
import 'package:gahoodrpg_wiki/pages/progression/progression_description.dart';

class Tier2Progression extends StatelessWidget {
  const Tier2Progression({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Row(
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
            const BiomeDescription(
              biomes: {
                'Desert': 'desert',
                'Badlands': 'badlands',
                'Savanna': 'savanna',
              },
            ),
            const ProgressionDescription(
              description:
                  'After tier 1, you\'ll head into the dry part of your world.'
                  ' The process will be the same as before, find materi.'
                  ' Try to find copper, gold, and diamonds. Typical vanilla progression.',
            ),
            const ProgressionDescription(
              description:
                  'From here, you can start your way through GahoodRPG!'
                  ' You can select your class using the Mastery Book given to you when you load into the world.'
                  ' You can also access this book at any time using the key assigned to opening the book, (N) by default'
                  ' Find a class that looks interesting to you, and hit the select button.'
                  ' You can level up early game by fighting monsters to unlock your first skill.',
            ),
            const ProgressionDescription(
              description: 'From here you\'ll want to make a Forging Furnace.'
                  ' The Forging Furnace will allow you to make ingredients to powerful armor, weapons, and trinkets.',
            ),
            const ProgressionDescription(
              description:
                  'Now you can start working towards your tier 1 armor.'
                  ' You\'ll want to either get Bronze for more defense, Amethyst for more offense, or Silver for an all-around build.',
            ),
            const ProgressionDescription(
              description: 'Now create the Armor Crafting Station.'
                  ' Once you have enough materials, you should start working on tier 1 armor.'
                  ' You need to make upgrades to go along with your armror, so decide if you want a power, magic, or balanced build.',
            ),
            const ProgressionDescription(
              description:
                  'Once you have at least one piece of tier 1 armor, you\'ll want to start taking on hordes.'
                  ' Hordes will spawn all over the tier 1 biomes in easy (green), medium (yellow), or red (hard).'
                  ' The higher the difficulty, the better the rewards, which will allow you to craft more armor pieces.',
            ),
            const ProgressionDescription(
              description:
                  'With at least 2 pieces of tier 1 armor and a diamond weapon for your class, you may be ready to take on the boss.'
                  ' You will need to find a boss spawner undergound, and provide it with a Seed of Rage to spawn the boss.',
            ),
            const ProgressionDescription(
              description:
                  'The boss will drop Rage Essence, which you can use to make your tier 1 weapon.'
                  ' Make a Weapon Crafting Station, an upgrade, and craft your tier 1 weapon to progress to tier 2.',
            ),
          ],
        ),
      ],
    );
  }
}
