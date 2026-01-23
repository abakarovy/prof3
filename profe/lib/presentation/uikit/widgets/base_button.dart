

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';

class BigButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool enabled;

  const BigButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.enabled = true,
  });


  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      child: Text(text, style: TextStyle(color: AppColors.white)),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fixedSize: Size(335.0, 56.0),
        backgroundColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return AppColors.accentInactive;
          } 
            return AppColors.accent;
          }
        ),
      ),
    );
  }
}