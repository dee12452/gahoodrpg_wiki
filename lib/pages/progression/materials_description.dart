import 'package:flutter/widgets.dart';
import 'package:gahoodrpg_wiki/pages/progression/bordered_item.dart';
import 'package:gahoodrpg_wiki/pages/progression/progression_description.dart';

class MaterialInfo {
  final String name;
  final String image;
  final String location;

  const MaterialInfo(this.name, this.image, this.location);
}

class MaterialsDescription extends StatelessWidget {
  final List<MaterialInfo> mats;

  const MaterialsDescription({super.key, required this.mats});

  @override
  Widget build(BuildContext context) {
    final List<Widget> matsGridItems = mats.map((e) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: SizedBox(
              width: 64,
              height: 64,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset('assets/images/items/${e.image}.png'),
              ),
            ),
          ),
          ProgressionDescription(description: e.name),
          ProgressionDescription(description: e.location),
        ],
      );
    }).toList();
    return BorderedItem(
        child: Column(
      children: [
        const ProgressionTitle(title: 'Materials'),
        GridView.count(
          crossAxisCount: 4,
          shrinkWrap: true,
          children: matsGridItems,
        ),
      ],
    ));
  }
}
