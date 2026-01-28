

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';

class BorderButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final ButtonStyle? style;
  final bool enabled;

  const BorderButton({
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
          side: BorderSide(color: AppColors.accent)
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        overlayColor: AppColors.accentInactive,
        fixedSize: Size(335.0, 56.0),
        disabledBackgroundColor: AppColors.accentInactive
      ),
    );
  }
}