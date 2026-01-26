

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:profe/presentation/uikit/widgets/base_button.dart';
import 'package:profe/presentation/uikit/widgets/base_textfield.dart';
import 'package:profe/presentation/uikit/widgets/select_widget.dart';
import 'package:profe/presentation/uikit/widgets/titled_textfield.dart';

class RegisterScreen extends StatefulWidget {

  const RegisterScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.directional(start: AppDimensions.padding24, end: AppDimensions.padding24, top: AppDimensions.padding32),
        child: Column(
          spacing: AppDimensions.padding32,
          children: [
            Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppDimensions.padding32,
              children: [
                Text("Создание профиля", style: TextStyle(fontSize: AppTexts.fontSizeTitle1, fontWeight: AppTexts.fontWeightBold),),
                Flex(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  direction: Axis.vertical,
                  spacing: AppDimensions.padding8,
                  children: [
                    Text("Без профиля вы не сможете создавать проекты.", style: TextStyle( fontWeight: AppTexts.fontWeightRegular, color: AppColors.caption ),),
                    Text("В профиле будут храниться результаты проектов и ваши описания.", style: TextStyle( fontWeight: AppTexts.fontWeightRegular, color: AppColors.caption ),)
                  ],
                )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Flex(
                  direction: Axis.vertical,
                  spacing: AppDimensions.padding24,
                  children: [
                    BaseTextField(hintText: "Имя"),
                    BaseTextField(hintText: "Отчество"),
                    BaseTextField(hintText: "Фамилия"),
                    BaseTextField(hintText: "Дата рождения"),
                    SelectWidget(
                      entries: [
                        DropdownMenuEntry(value: "male", label: "Мужской"),
                        DropdownMenuEntry(value: "female", label: "Женский")
                      ],
                      hintText: "Пол"
                    ),
                    BaseTextField(hintText: "Почта")
                  ],
                )
              ),
              
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsetsGeometry.directional(bottom: AppDimensions.padding32, start: AppDimensions.padding24, end: AppDimensions.padding24),
        child: BigButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/createPassword");
          },
          child: Text("Далее", style: TextStyle(color: AppColors.white, fontSize: AppTexts.fontSizeTitle3),),
        ),
      ),
    );
  }
}