import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/widgets/navigation.dart';
import 'data/gohenry_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoHenryData(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Navigation(),
      ),
    );
  }
}
