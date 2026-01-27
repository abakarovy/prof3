

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';

class BigButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final bool enabled;
  final ButtonStyle? style;

  const BigButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.style,
    this.enabled = true,
  });


  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      child: child,
      style: style ?? ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: Size(335.0, 56.0),
        maximumSize: Size(double.infinity, double.infinity),
        backgroundColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return AppColors.accentInactive;
          } 
            return AppColors.accent;
          }
        ),
        disabledBackgroundColor: AppColors.accentInactive
      ),
    );
  }
}