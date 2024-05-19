import 'package:flutter/material.dart';
import 'package:gahoodrpg_wiki/pages/progression/getting_started.dart';
import 'package:gahoodrpg_wiki/pages/progression/tier1_progression.dart';
import 'package:gahoodrpg_wiki/pages/progression/tier2_progression.dart';

class ProgressionPage extends StatelessWidget {
  const ProgressionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              'Progression',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              'Disclaimer',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(left: 100, right: 100),
              child: Text(
                'JEI is an optional dependency of this mod, '
                'however it is highly recommended to be installed '
                'with this mod for a better experience.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const GettingStarted(),
          const SizedBox(height: 10),
          const Tier1Progression(),
          const SizedBox(height: 10),
          const Tier2Progression(),
        ],
      ),
    );
  }
}
