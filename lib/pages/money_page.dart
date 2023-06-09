import 'package:flutter/material.dart';
import '../components/widgets/money_tab_bar.dart';

class MoneyPage extends StatefulWidget {
  final int tabIndex;
  const MoneyPage({super.key, required this.tabIndex});

  @override
  State<MoneyPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<MoneyPage> {
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
          'Money',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          MoneyTabBar(tabIndex: widget.tabIndex),
        ],
      ),
    );
  }
}
