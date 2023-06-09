import 'package:flutter/material.dart';
import '../../models/home_tile.dart';

class HomeTiles extends StatelessWidget {
  final HomeTile homeTiles;
  const HomeTiles({super.key, required this.homeTiles});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        // App Tile
        height: 80,
        width: 375,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon Image
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: homeTiles.boxColor,
                      borderRadius: homeTiles.borderRadius,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(
                        homeTiles.iconImagePath,
                      ),
                    ),
                  ),
                )
              ],
            ),

            // Tile Information
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(homeTiles.title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500)),
                ),
                const SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(homeTiles.subTitle,
                      style: const TextStyle(fontSize: 14, color: Colors.grey)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
