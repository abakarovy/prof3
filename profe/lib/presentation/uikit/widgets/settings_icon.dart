

import 'package:flutter/material.dart';

class SettingsIcon extends StatelessWidget {
  double? width = 32.0;
  double? height = 32.0;

  SettingsIcon({super.key, this.width, this.height});


  @override
  Widget build(BuildContext context) {
    
    return Image.asset("assets/icons/settings_icon.png", width: width, height: height,);
  }
}