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
            Image.asset('assets/images/screenshots/mastery_book.png',
                height: 300),
            const ProgressionDescription(
              description:
                  ' To select your class, open the book given to you when you started.'
                  ' You can also access this book at any time using the key assigned to opening the book, (N) by default.'
                  ' Find a class that looks interesting to you, and hit the \'Activate\' button.'
                  ' You can level up early game by fighting monsters to unlock your first skill.'
                  ' You can also level up by consuming experience potions that will be available to craft later in the game.',
            ),
            const ProgressionTitle(title: 'World'),
            Image.asset('assets/images/screenshots/mobs.png', height: 300),
            const ProgressionDescription(
              description:
                  'As you explore, you\'ll find tough new mobs throughout the world.',
            ),
            Image.asset('assets/images/screenshots/horde_spawner.png',
                height: 300),
            const ProgressionDescription(
              description:
                  'The next thing you\'ll find when exploring the world for the first time are horde spawners.',
            ),
            const ProgressionDescription(
              description:
                  'These odd blocks act as challenges to the tier that you are currently in.'
                  ' In each tier, there are easy, medium, and hard horde spawners that spawn.'
                  ' Fighting and beating a horde successfully will drop loot at the horde spawner block\'s location.'
                  ' The harder the difficulty, the better the loot that will drop.',
            ),
            Image.asset('assets/images/screenshots/ancient_wood_tree.png',
                height: 300),
            const ProgressionDescription(
              description:
                  'Another thing you\'ll find in each tier are new resources such as trees, ores, cacti, etc.'
                  ' These new resources will unlock different crafting recipes as you progress, so make sure to get them when you come across them.',
            ),
            const ProgressionDescription(
                description:
                    'Some of these resources will be gated behind a better mining tool,'
                    ' so make sure you\'re using the best tool possible when stumbling along these resources.'),
            Image.asset('assets/images/screenshots/boss_spawner.png',
                height: 300),
            const ProgressionDescription(
              description:
                  'Once you feel fully ready for a challenge and have an item that can spawn a boss,'
                  ' you\'ll want to look for a boss spawner in the underground like the one pictured above.',
            ),
            const ProgressionDescription(
                description:
                    'Just use your boss spawn item on the spawner and prepare for a challenging boss fight!'),
            const ProgressionTitle(title: 'Crafting'),
            Image.asset('assets/images/screenshots/crafting_tables.png',
                height: 300),
            const ProgressionDescription(
              description:
                  'GahoodRPG adds a plethora of new items, including new armor, weapons, and curios trinkets.'
                  ' These can be crafted using the above crafting tables.',
            ),
            const ProgressionDescription(
              description: 'Forging Furnace (Far Left)',
            ),
            const ProgressionDescription(
              description:
                  'The Forging Furnace is the place to combine rare materials to make even rarer materials.'
                  ' This is the first step in creating new items in GahoodRPG.',
            ),
            const ProgressionDescription(
              description: 'Armor Crafting Station (Second from the Left)',
            ),
            const ProgressionDescription(
              description:
                  'Once you have enough materials, you should start working on armor, which is crafted using the Armor Crafting Station.'
                  ' Armor can add health, defense, and offense all in one, and is a necessity to progress through this mod.',
            ),
            const ProgressionDescription(
              description: 'Weapon Crafting Station (Third from the Left)',
            ),
            const ProgressionDescription(
              description:
                  'New weapons can be crafted using the Weapon Crafting Station.'
                  ' These items will add a large amount of offense to your build.',
            ),
            const ProgressionDescription(
              description: 'Trinket Crafting Station (Second from the Right)',
            ),
            const ProgressionDescription(
              description:
                  'Fun and useful trinkets to can be crafted using the Trinket Crafting Station.'
                  ' These items can be equipped into curios slots and can either add utility such as healing or teleportation; or stats in offense or defense.',
            ),
            const ProgressionDescription(
              description: 'Stat Injecting Station (Far Right)',
            ),
            const ProgressionDescription(
              description:
                  'If you find yourself in a situation where you think your new armor or weapon is uglier than your last, never fear.'
                  ' You can use the Stat Injection Station to transfer stats from one item to another.'
                  ' So if you want to go around the entire game in diamond armor, you\'ll want to craft yourself one of these.',
            ),
          ],
        ),
      ],
    );
  }
}
