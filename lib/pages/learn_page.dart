import 'package:flutter/material.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<LearnPage> {
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
          'Learn',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }
}
