import 'package:flutter/material.dart';

Widget bottomnavbar(
    BuildContext context, int selectedIndex, void Function(int) onItemTapped) {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.airport_shuttle),
        label: 'My Loads',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Account',
      ),
    ],
    currentIndex: selectedIndex,
    selectedItemColor: Colors.redAccent,
    onTap: onItemTapped,
  );
}
