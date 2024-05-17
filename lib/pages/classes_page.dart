import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClassesPage extends StatelessWidget {
  const ClassesPage({super.key});

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
              'Classes',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70),
            ),
          ),
          ExpansionTile(
            title: _ClassTitle(
                classImage:
                    Image.asset('assets/images/classes/sword_barrage.png'),
                className: 'Warrior'),
            children: [
              const Text(
                'Main Hand Weapon: Sword',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              ),
              _SpellDescription(
                spellImage:
                    Image.asset('assets/images/classes/sword_barrage.png'),
                spellName: 'Sword Barrage',
                passive: true,
                descriptions: const [
                  'Every third attack will do additional damage.'
                ],
              ),
              _SpellDescription(
                spellImage:
                    Image.asset('assets/images/classes/power_slash.png'),
                spellName: 'Power Slash',
                passive: false,
                descriptions: const [
                  'Press and hold to charge and shoot a powerful blade slash.',
                  'The longer it is held, the larger and more powerful the attack.',
                  'The player cannot move when charging.',
                ],
              ),
              _SpellDescription(
                spellImage: Image.asset('assets/images/classes/war_cry.png'),
                spellName: 'War Cry',
                passive: false,
                descriptions: const [
                  'Unleash a mighty roar that renders foes unable to damage you.',
                  'Affected foes will also take more damage from you.',
                ],
              ),
              _SpellDescription(
                spellImage:
                    Image.asset('assets/images/classes/blade_dance.png'),
                spellName: 'Blade Dance',
                passive: false,
                descriptions: const [
                  'Summon your sword in front of you and perform a dash.',
                  'Deals damage to enemies nearby.',
                ],
              ),
              _SpellDescription(
                spellImage:
                    Image.asset('assets/images/classes/blade_crash.png'),
                spellName: 'Blade Crash',
                passive: false,
                descriptions: const [
                  'Once activated, the player will either jump in the air or fall faster.',
                  'Once the ground or a fluid has been hit, slam down to deal damage and knockback to nearby enemies.',
                  'The player cannot cast other spells while this spell is active.',
                ],
              ),
            ],
          ),
          ExpansionTile(
            title: _ClassTitle(
                classImage: Image.asset('assets/images/classes/wolf_pack.png'),
                className: 'Ranger'),
            children: [
              const Text(
                'Main Hand Weapon: Bow',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              ),
              _SpellDescription(
                spellImage: Image.asset('assets/images/classes/wolf_pack.png'),
                spellName: 'Wolf Pack',
                passive: true,
                descriptions: const [
                  'Summons a friendly wolf to fight by your side at all times.'
                ],
              ),
              _SpellDescription(
                spellImage:
                    Image.asset('assets/images/classes/raining_arrows.png'),
                spellName: 'Raining Arrows',
                passive: false,
                descriptions: const [
                  'Launch a barrage of arrows to fall at a location.',
                ],
              ),
              _SpellDescription(
                spellImage:
                    Image.asset('assets/images/classes/exploding_arrows.png'),
                spellName: 'Exploding Arrows',
                passive: false,
                descriptions: const [
                  'Every third arrow hit will explode on hit, dealing additional damage.',
                ],
              ),
              _SpellDescription(
                spellImage:
                    Image.asset('assets/images/classes/rooting_vine.png'),
                spellName: 'Rooting Vine',
                passive: false,
                descriptions: const [
                  'Send out a thorny vine at your enemies.',
                  'Hit enemies will be rooted in place for a short period of time.',
                ],
              ),
              _SpellDescription(
                spellImage:
                    Image.asset('assets/images/classes/call_of_the_wild.png'),
                spellName: 'Call of the Wild',
                passive: false,
                descriptions: const [
                  'You influence your wolf to have a poisonous bite for a brief period of time.',
                  'Bitten foes will receive poison damage for a brief period of time.',
                ],
              ),
            ],
          ),
          ExpansionTile(
            title: _ClassTitle(
                classImage:
                    Image.asset('assets/images/classes/portal_jump.png'),
                className: 'Mage'),
            children: [
              const Text(
                'Main Hand Weapon: Wand',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              ),
              _SpellDescription(
                spellImage:
                    Image.asset('assets/images/classes/portal_jump.png'),
                spellName: 'Portal Jump',
                passive: false,
                descriptions: const [
                  'Jumping again while in mid air will teleport the mage forward in space.'
                ],
              ),
              _SpellDescription(
                spellImage: Image.asset('assets/images/classes/fireball.png'),
                spellName: 'Fireball',
                passive: false,
                descriptions: const [
                  'Launch a devastating fireball through the air.',
                ],
              ),
              _SpellDescription(
                spellImage:
                    Image.asset('assets/images/classes/lightning_bolt.png'),
                spellName: 'Lighting Bolt',
                passive: false,
                descriptions: const [
                  'Cast down a powerful lightning bolt onto your place of choice.',
                  'Damages nearby enemies.',
                ],
              ),
              _SpellDescription(
                spellImage: Image.asset('assets/images/classes/frost_beam.png'),
                spellName: 'Frost Beam',
                passive: false,
                descriptions: const [
                  'Press and hold this spell to unleash a ray of cold onto your enemies.',
                  'Hit enemies will receive a slow debuff.',
                ],
              ),
              _SpellDescription(
                spellImage: Image.asset('assets/images/classes/meteor.png'),
                spellName: 'Meteor',
                passive: false,
                descriptions: const [
                  'Spawn a meteor at your desired location.',
                  'Deals massive damage and knockback to nearby enemies.',
                ],
              ),
            ],
          ),
          ExpansionTile(
            title: _ClassTitle(
                classImage:
                    Image.asset('assets/images/classes/divine_guard.png'),
                className: 'Guardian'),
            children: [
              const Text(
                'Main Hand Weapon: Shield',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              ),
              _SpellDescription(
                spellImage:
                    Image.asset('assets/images/classes/divine_guard.png'),
                spellName: 'Divine Guard',
                passive: true,
                descriptions: const [
                  'Every so often your resolve allows you to block any attack that comes your way.'
                ],
              ),
              _SpellDescription(
                spellImage:
                    Image.asset('assets/images/classes/shield_throw.png'),
                spellName: 'Shield Throw',
                passive: false,
                descriptions: const [
                  'Throw your shield out at your enemies.',
                  'Your cooldown is refreshed if you hit an enemy.',
                ],
              ),
              _SpellDescription(
                spellImage:
                    Image.asset('assets/images/classes/thorn_shield.png'),
                spellName: 'Thorn Shield',
                passive: true,
                descriptions: const [
                  'Blocking an attack will deal thorn damage back to an enemy.',
                ],
              ),
              _SpellDescription(
                spellImage:
                    Image.asset('assets/images/classes/valiant_charge.png'),
                spellName: 'Valiant Charge',
                passive: false,
                descriptions: const [
                  'A powerful charge that sends the player forward.',
                  'Deals damage and knockback to enemies nearby.',
                ],
              ),
              _SpellDescription(
                spellImage:
                    Image.asset('assets/images/classes/crash_guard.png'),
                spellName: 'Crash Guard',
                passive: false,
                descriptions: const [
                  'Summon new shields down near you, crashing to the ground.',
                  'Once the shields fall, enemies nearby take massive damage and knockback.',
                  'These spawned shields can also block enemy projectiles.',
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ClassTitle extends StatelessWidget {
  final Image classImage;
  final String className;

  const _ClassTitle({
    super.key,
    required this.classImage,
    required this.className,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        classImage,
        const SizedBox(
          width: 10,
        ),
        Text(
          className,
          style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white70),
        ),
      ],
    );
  }
}

class _SpellDescription extends StatelessWidget {
  final Image spellImage;
  final String spellName;
  final bool passive;
  final List<String> descriptions;

  const _SpellDescription({
    super.key,
    required this.spellImage,
    required this.spellName,
    required this.passive,
    required this.descriptions,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ExpansionTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            spellImage,
            const SizedBox(
              width: 10,
            ),
            Text(
              spellName,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70),
            ),
          ],
        ),
        children: [
          Text(
            passive ? 'Passive ability.' : 'Active ability.',
            style: const TextStyle(fontSize: 14, color: Colors.white70),
          ),
          ...descriptions.map((e) => Text(e,
              style: const TextStyle(fontSize: 14, color: Colors.white70)))
        ],
      ),
    );
  }
}
