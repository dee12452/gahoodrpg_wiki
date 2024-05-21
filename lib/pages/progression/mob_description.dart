import 'package:flutter/widgets.dart';
import 'package:gahoodrpg_wiki/pages/progression/bordered_item.dart';
import 'package:gahoodrpg_wiki/pages/progression/progression_description.dart';

class MobsDescription extends StatelessWidget {
  final Map<String, String> mobs;

  const MobsDescription({super.key, required this.mobs});

  @override
  Widget build(BuildContext context) {
    final List<Widget> mobGridItems = mobs.entries.map((e) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Image.asset('assets/images/mobs/${e.value}.png'),
          ),
          ProgressionDescription(description: e.key),
        ],
      );
    }).toList();
    return BorderedItem(
        child: Column(
      children: [
        const ProgressionTitle(title: 'Mobs'),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          children: mobGridItems,
        ),
      ],
    ));
  }
}
