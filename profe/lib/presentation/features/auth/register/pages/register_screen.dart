import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:profe/presentation/uikit/widgets/base_button.dart';
import 'package:profe/presentation/uikit/widgets/titled_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.directional(start: AppDimensions.padding32, end: AppDimensions.padding32, top: AppDimensions.padding64),
          child: Column(
            spacing: AppDimensions.padding64,
            children: [
              Flex(
                direction: Axis.vertical,
                spacing: AppDimensions.padding16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("🖐️ Добро пожаловать!", style: AppTexts.title1_Bold),
                  const Text("Войдите, чтобы пользоваться функциями приложения", style: AppTexts.text_Regular,),
                ],
              ),

              Flex(
                direction: Axis.vertical,
                spacing: AppDimensions.padding16,
                children: [
                  TitledTextField(labelText: "Вход по E-mail", hintText: "example@mail.com"),
                  TitledTextField(labelText: "Пароль", hintText: ""),
                  BigButton(text: "Продолжить", onPressed: () {
                    
                  },),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Зарегестрироваться", style: TextStyle(color: AppColors.accent),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                  )
                ],
              ),

              Flex(
                direction: Axis.vertical,
                spacing: AppDimensions.padding24,
                children: [
                  Text("Или войдите с помощью", style: TextStyle(color: AppColors.caption),),
                ],
              )

            ],
          ),
        ),
      )
    );
  }
}