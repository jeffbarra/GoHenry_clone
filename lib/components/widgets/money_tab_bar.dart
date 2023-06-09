import 'package:flutter/material.dart';
import '../../pages/eloise_tab.dart';
import '../../pages/henry_tab.dart';
import '../../pages/owen_tab.dart';

class MoneyTabBar extends StatelessWidget {
  final int tabIndex;

  const MoneyTabBar({
    super.key,
    required this.tabIndex,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: tabIndex,
      length: 3, // 3 tabs

      child: Expanded(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              child: const TabBar(
                padding: EdgeInsets.only(left: 80, right: 80),
                indicatorColor: Colors.red,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                labelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                tabs: [
                  // "Owen" Tab
                  Tab(
                    text: 'Owen',
                  ),

                  // "Eloise" Tab
                  Tab(
                    text: 'Eloise',
                  ),

                  // "Henry" Tab
                  Tab(
                    text: 'Henry',
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  // "Owen" Tab Content
                  OwenTab(),

                  // "Eloise" Tab Content
                  EloiseTab(),

                  // "Henry" Tab Content
                  HenryTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
