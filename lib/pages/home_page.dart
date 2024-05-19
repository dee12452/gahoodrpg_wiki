import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final CarouselController carouselController = CarouselController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(left: 100, right: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Home',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70),
            ),
            const SizedBox(
              height: 25,
            ),
            const Image(image: AssetImage('assets/images/title.png')),
            const SizedBox(
              height: 25,
            ),
            CarouselSlider(
              items: [1, 2, 3, 4, 5, 6]
                  .map((s) => Image.asset('assets/images/screenshots/screenshot_$s.png'))
                  .toList(),
              options: CarouselOptions(
                height: 300,
              ),
              carouselController: carouselController,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      carouselController.previousPage();
                    },
                    child:
                        const Icon(Icons.arrow_circle_left_outlined, size: 50),
                  ),
                  InkWell(
                    onTap: () {
                      carouselController.nextPage();
                    },
                    child:
                        const Icon(Icons.arrow_circle_right_outlined, size: 50),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: const Text(
                'GahoodRPG is a mod that takes RPG elements and adds them to the vanilla Minecraft experience.',
                style: TextStyle(fontSize: 14, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: const Text(
                'It is inspired by games like Terraria'
                    ', MMORPGs such as Guild Wars 2, and other mods such as DivineRPG '
                    'and Iron\'s Spells \'n Spellbooks.',
                style: TextStyle(fontSize: 14, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/forge.png',
                  height: 100,
                ),
                const Column(
                  children: [
                    Text(
                      'Supported Minecraft Versions:',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '1.20.1',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '1.19.2',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    )
                  ],
                ),
                const Column(
                  children: [
                    Text(
                      'Wiki Version:',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '0.3.7',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
