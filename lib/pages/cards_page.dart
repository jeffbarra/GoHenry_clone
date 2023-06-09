import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
