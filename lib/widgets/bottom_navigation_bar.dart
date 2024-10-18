import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      backgroundColor: Colors.black, // Optional: change background color
      selectedItemColor: Colors.white, // White color for selected icon
      unselectedItemColor: Colors.white70, // Lighter white for unselected icons
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'Shorts'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Upload'),
        BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'You'),
      ],
    );
  }
}
