

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';

class ShallowButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        overlayColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        foregroundColor: Colors.transparent,
      ),
      child: Text("Зарегестрироваться", style: TextStyle(color: AppColors.accent),),
    );
  }
}