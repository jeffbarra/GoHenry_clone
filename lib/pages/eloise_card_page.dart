import 'package:flutter/material.dart';

import '../components/widgets/cards_tab_bar.dart';

class EloiseCardPage extends StatefulWidget {
  final int tabIndex;
  const EloiseCardPage({super.key, required this.tabIndex});

  @override
  State<EloiseCardPage> createState() => _EloiseCardPageState();
}

class _EloiseCardPageState extends State<EloiseCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.pie_chart_outline, color: Colors.black),
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Cards',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        body: Column(
          children: [
            CardsTabBar(tabIndex: widget.tabIndex),
          ],
        ));
  }
}
