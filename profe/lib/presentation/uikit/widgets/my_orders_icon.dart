

import 'package:flutter/material.dart';

class MyOrdersIcon extends StatelessWidget {
  double? width = 32.0;
  double? height = 32.0;

  MyOrdersIcon({super.key, this.width, this.height});


  @override
  Widget build(BuildContext context) {
    
    return Image.asset("assets/icons/my_orders_icon.png", width: width, height: height,);
  }
}