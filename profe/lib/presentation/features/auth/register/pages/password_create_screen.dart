

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:profe/presentation/uikit/widgets/big_button.dart';
import 'package:profe/presentation/uikit/widgets/password_textfield.dart';

class PasswordCreateScreen extends StatelessWidget {

  const PasswordCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsetsGeometry.directional(start: AppDimensions.padding24, end: AppDimensions.padding24, top: AppDimensions.padding32),
        child: Column(
          spacing: AppDimensions.padding64,
          children: [
            Row(
              children: [
                Expanded(
                  child: Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: AppDimensions.padding8,
                    children: [
                      Text("✋ Создание пароля", style: TextStyle(fontSize: AppTexts.fontSizeTitle1, fontWeight: AppTexts.fontWeightBold),),
                      Text("Введите новый пароль", style: TextStyle(fontSize: AppTexts.fontSizeText, fontWeight: AppTexts.fontWeightSemibold),)
                    ],
                  ),
                )
              ],
            ),
            Form(
              child: Flex(
                direction: Axis.vertical,
                spacing: AppDimensions.padding16,
                children: [
                  PasswordTextField(
                    labelText: "Новый пароль",
                    hintText: "******",
                  ),
                  PasswordTextField(
                    labelText: "Повторите пароль",
                    hintText: "******",
                  ),
                  BigButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/createCode");
                    },
                    child: Text("Сохранить", style: TextStyle(color: AppColors.white, fontSize: AppTexts.fontSizeHeadline),),
                  )
                ],
              )
            )
          ],
        ),
      )
    );
  }
}