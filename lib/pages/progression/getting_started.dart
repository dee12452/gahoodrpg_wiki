import 'package:flutter/material.dart';
import 'package:gahoodrpg_wiki/pages/progression/progression_description.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Row(
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
            const ProgressionTitle(title: 'Intro'),
            const ProgressionDescription(
                description: 'Welcome to the world of GahoodRPG!'
                    ' To conquer all of the content in this mod, you will have to get through all the tiers of content.'),
            const ProgressionDescription(
              description:
                  'When starting a new world, you\'ll find you\'re given a set of weapons and a book'
                  ' Each of these weapons belongs to a specific class that you can choose.'
                  ' When using a certain class, the active abilities will only be able to be used when the associated weapon is in the player\'s main hand.',
            ),
            const ProgressionTitle(title: 'Classes'),
            Image.asset('assets/images/screenshots/mastery_book.png', height: 300),
            const ProgressionDescription(
              description: ' To select your class, open the book given to you when you started.'
                  ' You can also access this book at any time using the key assigned to opening the book, (N) by default.'
                  ' Find a class that looks interesting to you, and hit the \'Activate\' button.'
                  ' You can level up early game by fighting monsters to unlock your first skill.'
                  ' You can also level up by consuming experience potions that will be available to craft later in the game.',
            ),
            const ProgressionTitle(title: 'World'),
            Image.asset('assets/images/screenshots/horde_spawner.png', height: 300),
            const ProgressionDescription(
              description: 'Probably the first thing you\'ll find when exploring the world for the first time are horde spawners.',
            ),
            const ProgressionDescription(
              description: 'These odd blocks act as challenges to the tier that you are currently in.'
              ' In each tier, there are easy, medium, and hard horde spawners that spawn.'
              ' Fighting and beating a horde successfully will drop loot at the horde spawner block\'s location.'
              ' The harder the difficulty, the better the loot that will drop.',
            ),
            Image.asset('assets/images/screenshots/ancient_wood_tree.png', height: 300),
            const ProgressionDescription(
              description: 'Another thing you\'ll find in each tier are new resources such as trees, ores, cacti, etc.'
              ' These new resources will unlock different crafting recipes as you progress, so make sure to get them when you come across them.',
            ),
            const ProgressionDescription(
              description: 'Some of these resources will be gated behind a better mining tool,'
                  ' so make sure you\'re using the best tool possible when stumbling along these resources.'
            ),
            const ProgressionTitle(title: 'Crafting'),
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
