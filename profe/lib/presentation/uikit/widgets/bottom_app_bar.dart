

import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatelessWidget {
  int? selectedIndex;
  ValueChanged<int> onSelected;

  BottomAppBarWidget({super.key, this.selectedIndex, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex ?? 0,
      onDestinationSelected: onSelected,
      destinations: [
        NavigationDestination(icon: Icon(Icons.home_outlined), label: "Главная"),
        NavigationDestination(icon: Icon(Icons.home_outlined), label: "Главная"),
        NavigationDestination(icon: Icon(Icons.home_outlined), label: "Главная"),
        NavigationDestination(icon: Icon(Icons.home_outlined), label: "Главная")
      ],
      
    );
  }
}