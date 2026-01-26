

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';

class IconedButton extends StatelessWidget {

  final Text text;
  final Widget icon;
  final VoidCallback onPressed;
  final bool enabled;

  const IconedButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: AppColors.inputStroke, width: 1.25)
        ),
        fixedSize: Size(335.0, 56.0),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        overlayColor: AppColors.inputIcon,
        disabledBackgroundColor: AppColors.accentInactive
      ),
      child: Row(
        mainAxisAlignment: .center,
        spacing: AppDimensions.padding16,
        children: [
          icon,
          text
        ]
      ) 
    );
  }
}