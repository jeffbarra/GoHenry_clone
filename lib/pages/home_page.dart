import 'package:flutter/material.dart';
import 'package:gohenry_clone/components/tiles/child_tile.dart';
import 'package:gohenry_clone/components/widgets/drawer.dart';
import 'package:gohenry_clone/pages/money_page.dart';
import 'package:gohenry_clone/pages/savings_page.dart';
import 'package:provider/provider.dart';
import '../components/tiles/home_balance.dart';
import '../components/tiles/home_tiles.dart';
import '../data/gohenry_data.dart';
import '../models/child_tile.dart';
import '../models/home_tile.dart';
import 'cards_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<GoHenryData>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey.shade200,

        // Home Banner Tiles ListView
        body: Column(
          children: [
            const HomeBalanceTile(),
            Container(
              height: 100,
              child: Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.homeTiles.length,
                  itemBuilder: (context, index) {
                    HomeTile individualHomeTile = value.homeTiles[index];
                    return Padding(
                      padding: index == value.homeTiles.length - 1
                          ? const EdgeInsets.fromLTRB(20, 0, 20, 0)
                          : const EdgeInsets.only(left: 20.0),
                      child: HomeTiles(
                        homeTiles: individualHomeTile,
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Child's Main Tiles ListView
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: value.childTiles.length,
                itemBuilder: (context, index) {
                  ChildTile individualChildTile = value.childTiles[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ChildTiles(
                      childTiles: individualChildTile,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MoneyPage(
                              tabIndex:
                                  index, // Goes to corresponding child's account tab
                            ),
                          ),
                        );
                      },
                      onPress: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const CardsPage(),
                          ),
                        );
                      },
                      onPressTwo: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SavingsPage(),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
