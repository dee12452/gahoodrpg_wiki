import 'package:flutter/widgets.dart';
import 'package:gahoodrpg_wiki/pages/progression/bordered_item.dart';
import 'package:gahoodrpg_wiki/pages/progression/progression_description.dart';

class MobInfo {
  final String name;
  final String image;
  final bool aggressive;

  const MobInfo(this.name, this.image, this.aggressive);
}

class MobsDescription extends StatelessWidget {
  final List<MobInfo> mobs;

  const MobsDescription({super.key, required this.mobs});

  @override
  Widget build(BuildContext context) {
    final List<Widget> mobGridItems = mobs.map((e) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: SizedBox(
              width: 500,
              height: 300,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset('assets/images/mobs/${e.image}.png'),
              ),
            ),
          ),
          ProgressionDescription(description: e.name),
          ProgressionDescription(description: e.aggressive ? 'Aggressive' : 'Neutral'),
        ],
      );
    }).toList();
    return BorderedItem(
        child: Column(
      children: [
        const ProgressionTitle(title: 'Mobs'),
        GridView.count(
          crossAxisCount: (MediaQuery.of(context).size.width / 500).floor(),
          shrinkWrap: true,
          children: mobGridItems,
        ),
      ],
    ));
  }
}
