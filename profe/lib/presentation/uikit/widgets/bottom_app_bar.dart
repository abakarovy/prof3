

import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  final int? selectedIndex;
  final ValueChanged<int> onSelected;

  const BottomNavBarWidget({super.key, this.selectedIndex, required this.onSelected});

  @override
  State<StatefulWidget> createState() => _BottomNavBarWidgetState();
}


class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {

  @override
  Widget build(BuildContext context) {
    
    return Container(

    );
  }
}