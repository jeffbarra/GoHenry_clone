import 'package:flutter/material.dart';
import '../../pages/awards_page.dart';
import '../../pages/home_page.dart';
import '../../pages/learn_page.dart';
import '../../pages/money_page.dart';
import 'drawer.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  // Bottom NavBar Functionality
  int _selectedIndex = 0; // Starts at HomePage() = [0]
  int tabIndex = 0;

  // Selected Icon Method
  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  // Different Screens
  final screens = [
    const HomePage(),
    const MoneyPage(
      tabIndex:
          0, // What tab (index) will be selected when "Money" tab is pressed
    ),
    const LearnPage(),
    const AwardsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      // Drawer Menu
      drawer: const MyDrawer(),

      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.red.shade400,
        elevation: 0,
        title: const Text(
          'Your parent balance',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_exchange_rounded),
            label: 'Money',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events_rounded),
            label: 'Awards',
          ),
        ],

        // Bottom NavBar Functionality
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade400,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),

      // Screen Navigation
      body: screens[_selectedIndex],
    );
  }
}
