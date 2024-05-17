import 'package:flutter/material.dart';

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
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ExpansionTile(
            title: const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Tier 1',
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
                  const _BiomeDescription(),
                  const _ProgressionDescription(
                    description: '',
                  ),
                  const _ProgressionDescription(
                    description: 'Do thing 2.',
                  ),
                  const _ProgressionDescription(
                    description: 'Do thing 3.',
                  ),
                  const _ProgressionDescription(
                    description: 'Do thing 4.',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BiomeDescription extends StatelessWidget {
  const _BiomeDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _ProgressionDescription extends StatelessWidget {
  final String description;

  const _ProgressionDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14, color: Colors.white70),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
