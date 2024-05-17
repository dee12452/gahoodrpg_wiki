import 'package:flutter/material.dart';
import 'package:gahoodrpg_wiki/pages/classes_page.dart';
import 'package:gahoodrpg_wiki/pages/home_page.dart';
import 'package:gahoodrpg_wiki/pages/progression_page.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AppPageState();
  }
}

class _AppPageState extends State<AppPage> {
  Widget child = HomePage();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 128,
        toolbarHeight: 64,
        backgroundColor: Colors.deepPurple.shade700,
        leading: Row(
          children: [
            SizedBox(
              width: 64,
              height: 64,
              child: Image.asset('assets/images/logo.png'),
            ),
            const SizedBox(
              width: 5,
            ),
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
          ],
        ),
      ),
      drawer: Container(
        color: const Color.fromARGB(200, 0, 0, 0),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(150, 115, 20, 190),
              ),
              child: Text('Pages', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white70),),
            ),
            _DrawerItem(
              name: 'Home',
              index: 0,
              currentIndex: selectedIndex,
              onTap: select,
            ),
            ListTile(
              title: const Text('Classes'),
              selected: selectedIndex == 1,
              onTap: () {
                Navigator.pop(context);
                select(1);
              },
            ),
            ListTile(
              title: const Text('Progression'),
              selected: selectedIndex == 2,
              onTap: () {
                Navigator.pop(context);
                select(2);
              },
            ),
            ListTile(
              title: const Text('Items + Blocks'),
              selected: selectedIndex == 3,
              onTap: () {
                Navigator.pop(context);
                select(3);
              },
            ),
            ListTile(
              title: const Text('Mobs'),
              selected: selectedIndex == 4,
              onTap: () {
                Navigator.pop(context);
                select(4);
              },
            ),
          ],
        ),
      ),
      body: child,
    );
  }

  void select(int index) {
    if (selectedIndex == index) return;

    Widget nextPage;
    switch (index) {
      case 0:
        nextPage = HomePage();
      case 1:
        nextPage = const ClassesPage();
      case 2:
        nextPage = const ProgressionPage();
      default:
        nextPage = const Center(child: Text('Under Construction!'));
    }
    setState(() {
      child = nextPage;
      selectedIndex = index;
    });
  }
}

class _DrawerItem extends StatelessWidget {
  final String name;
  final int index;
  final int currentIndex;
  final Function(int) onTap;

  const _DrawerItem({super.key, required this.name, required this.index, required this.currentIndex, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      selected: currentIndex == index,
      onTap: () {
        Navigator.pop(context);
        onTap(index);
      },
    );
  }

}
