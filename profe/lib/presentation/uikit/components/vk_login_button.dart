

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:profe/presentation/uikit/components/vk_icon.dart';
import 'package:profe/presentation/uikit/widgets/iconed_button.dart';

class VkLoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool enabled;

  const VkLoginButton({
    super.key,
    required this.onPressed,
    this.enabled = true,
  });


  @override
  Widget build(BuildContext context) {

    return IconedButton(
      text: Text("Войти с VK", style: TextStyle(color: AppColors.black),),
      icon: VkIcon(),
      onPressed: onPressed
    );
  }
}