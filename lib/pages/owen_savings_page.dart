import 'package:flutter/material.dart';

class OwenSavingsPage extends StatefulWidget {
  const OwenSavingsPage({super.key});

  @override
  State<OwenSavingsPage> createState() => _OwenSavingsPageState();
}

class _OwenSavingsPageState extends State<OwenSavingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.info_outline_rounded, color: Colors.black),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Savings',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }
}
