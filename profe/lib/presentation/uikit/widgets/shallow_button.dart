

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';

class ShallowButton extends StatelessWidget {
  final VoidCallback onPressed;
  final ButtonStyle? style;
  final Widget child;

  const ShallowButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.style
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style ?? ElevatedButton.styleFrom(
        backgroundColor: AppColors.transparent,
        shadowColor: AppColors.transparent,
        overlayColor: AppColors.transparent,
        surfaceTintColor: AppColors.transparent,
        foregroundColor: AppColors.transparent,
      ),
      child: child,
    );
  }
}