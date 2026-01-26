

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:profe/presentation/uikit/components/del_icon.dart';

class CreateCodeScreen extends StatefulWidget {
  final String code = "";

  const CreateCodeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CreateCodeScreenState();
}

class _CreateCodeScreenState extends State<CreateCodeScreen> {


  @override
  Widget build(BuildContext context) {
    List<Widget> numPad = List.generate(
      9,
      (index) {
        if (index < 9) {
          return TextButton(
            onPressed: () {},
            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(AppColors.inputBg)),
            child: Text((index+1).toString(), style: TextStyle(fontSize: AppTexts.fontSizeTitle1, color: AppColors.black),),
          );
        } else {
          return Container();
        }
      }
    );
    numPad.addAll([
      Text(""),
      TextButton(onPressed: () {}, style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(AppColors.inputBg)), child: Text("0",  style: TextStyle(fontSize: AppTexts.fontSizeTitle1, color: AppColors.black),),),
      IconButton(onPressed: () {}, icon: DelIcon())
    ]);

    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.directional(top: AppDimensions.padding64, start: AppDimensions.padding32, end: AppDimensions.padding32),
        child: Column(
          spacing: AppDimensions.padding56,
          children: [
            Flex(
              direction: Axis.vertical,
              children: [
                Text("Создайте пароль", style: TextStyle(fontSize: AppTexts.fontSizeTitle1, fontWeight: AppTexts.fontWeightBold),),
                Text("Для защиты ваших персональных данных", style: TextStyle(fontSize: AppTexts.fontSizeText, fontWeight: AppTexts.fontWeightRegular, color: AppColors.caption),)
              ],
            ),

            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: AppDimensions.padding16,
              children: [
                
                AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  width: AppDimensions.padding16,
                  height: AppDimensions.padding16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: BoxBorder.all(color: AppColors.accent),
                    color: AppColors.accent
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  width: AppDimensions.padding16,
                  height: AppDimensions.padding16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: BoxBorder.all(color: AppColors.accent),
                    color: AppColors.accent
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  width: AppDimensions.padding16,
                  height: AppDimensions.padding16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: BoxBorder.all(color: AppColors.accent),
                    color: AppColors.accent
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  width: AppDimensions.padding16,
                  height: AppDimensions.padding16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: BoxBorder.all(color: AppColors.accent),
                    color: AppColors.accent
                  ),
                )
              ],
            ),

            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: AppDimensions.padding32,
                mainAxisSpacing: AppDimensions.padding32,
                children: numPad
              )
            )
          ],
        ),
      ),
    );
  }
}