import 'package:flutter/material.dart';
import 'package:gahoodrpg_wiki/pages/progression/progression_description.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Text(
            'Getting Started',
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
            ProgressionDescription(
                description: 'Welcome to the world of GahoodRPG!'
                    ' To conquer all of the content in this mod, you will have to get through all the tiers of content.'),
            ProgressionDescription(
              description:
                  'When starting a new world, you\'ll find you\'re given a set of weapons and a book'
                  ' Each of these weapons belongs to a specific class that you can choose.'
                  ' When using a certain class, the active abilities will only be able to be used when the associated weapon is in the player\'s main hand.',
            ),
            ProgressionDescription(
              description: ' To select your class, open the book given to you when you started.'
                  ' You can also access this book at any time using the key assigned to opening the book, (N) by default.'
                  ' Find a class that looks interesting to you, and hit the select button.'
                  ' You can level up early game by fighting monsters to unlock your first skill.'
                  ' You can also level up by consuming experience potions that will be available to craft later in the game.',
            ),
            ProgressionDescription(
              description:
                  'Now you can start working towards your tier 1 armor.'
                  ' You\'ll want to either get Bronze for more defense, Amethyst for more offense, or Silver for an all-around build.',
            ),
            ProgressionDescription(
              description: 'Now create the Armor Crafting Station.'
                  ' Once you have enough materials, you should start working on tier 1 armor.'
                  ' You need to make upgrades to go along with your armror, so decide if you want a power, magic, or balanced build.',
            ),
            ProgressionDescription(
              description:
                  'Once you have at least one piece of tier 1 armor, you\'ll want to start taking on hordes.'
                  ' Hordes will spawn all over the tier 1 biomes in easy (green), medium (yellow), or red (hard).'
                  ' The higher the difficulty, the better the rewards, which will allow you to craft more armor pieces.',
            ),
            ProgressionDescription(
              description:
                  'With at least 2 pieces of tier 1 armor and a diamond weapon for your class, you may be ready to take on the boss.'
                  ' You will need to find a boss spawner undergound, and provide it with a Seed of Rage to spawn the boss.',
            ),
            ProgressionDescription(
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
