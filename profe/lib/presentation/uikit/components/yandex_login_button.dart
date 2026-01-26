

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:profe/presentation/uikit/components/vk_icon.dart';
import 'package:profe/presentation/uikit/components/yandex_icon.dart';
import 'package:profe/presentation/uikit/widgets/iconed_button.dart';

class YandexLoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool enabled;

  const YandexLoginButton({
    super.key,
    required this.onPressed,
    this.enabled = true,
  });


  @override
  Widget build(BuildContext context) {

    return IconedButton(
      text: Text("Войти с Yandex", style: TextStyle(color: AppColors.black),),
      icon: YandexIcon(),
      onPressed: onPressed
    );
  }
}