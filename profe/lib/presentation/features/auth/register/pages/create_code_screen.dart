

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:profe/presentation/uikit/components/del_icon.dart';

class CreateCodeScreen extends StatefulWidget {
  final String code = "";
  final int codeMaxLength = 4;

  const CreateCodeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CreateCodeScreenState(code: code);
}

class _CreateCodeScreenState extends State<CreateCodeScreen> {
  String code = "";
  final int codeMaxLength  = 4;

  _CreateCodeScreenState({required this.code});

  void handleClick(int num) {
    if (code.length < 4) {
      setState(() {
        code = code + num.toString();
      });
      debugPrint(code);
    } else {
      
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> numPad = List.generate(
      9,
      (index) => TextButton(
        onPressed: () {
          handleClick(index);
        },
        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(AppColors.inputBg)),
        child: Text(
          (index + 1).toString(),
          style: TextStyle(fontSize: AppTexts.fontSizeTitle1, color: AppColors.black),
        ),
      ),
    );
    numPad.addAll([
      const SizedBox.shrink(), // Пустое место
      TextButton(
        onPressed: () {},
        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(AppColors.inputBg)),
        child: Text(
          "0",
          style: TextStyle(fontSize: AppTexts.fontSizeTitle1, color: AppColors.black),
        ),
      ),
      IconButton(
        onPressed: () {
          setState(() {
            code = code.substring(0, code.length-1);
          });
        },
        icon: DelIcon(),
      ),
    ]);

    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.directional(
          top: AppDimensions.padding64,
          bottom: AppDimensions.padding48,
          start: AppDimensions.padding32,
          end: AppDimensions.padding32,
        ),
        child: Column(
          spacing: AppDimensions.padding56,
          children: [
            Flex(
              direction: Axis.vertical,
              children: [
                Text(
                  "Создайте пароль",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: AppTexts.fontSizeTitle1,
                    fontWeight: AppTexts.fontWeightBold,
                  ),
                ),
                Text(
                  "Для защиты ваших персональных данных",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: AppTexts.fontSizeText,
                    fontWeight: AppTexts.fontWeightRegular,
                    color: AppColors.caption,
                  ),
                )
              ],
            ),
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: AppDimensions.padding16,
              children: List.generate(4, (index) {
                bool isFilled = index < code.length;

                return _codeIndicator(isFilled);
              }),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  // Вычисляем childAspectRatio на основе доступного пространства
                  // Учитываем отступы: 2 вертикальных промежутка (3 ряда) и 3 горизонтальных (4 колонки)
                  final availableWidth = constraints.maxWidth;
                  final availableHeight = constraints.maxHeight;
                  
                  final horizontalSpacing = AppDimensions.padding32 * 2; // 2 промежутка между 3 колонками
                  final verticalSpacing = AppDimensions.padding32 * 3; // 3 промежутка между 4 рядами
                  
                  final cellWidth = (availableWidth - horizontalSpacing) / 3;
                  final cellHeight = (availableHeight - verticalSpacing) / 4;
                  
                  // Вычисляем aspect ratio, чтобы кнопки были квадратными
                  // childAspectRatio = ширина / высота
                  final aspectRatio = cellWidth / cellHeight;
                  
                  return GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: AppDimensions.padding32,
                    mainAxisSpacing: AppDimensions.padding32,
                    childAspectRatio: aspectRatio,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: numPad,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _codeIndicator(bool isFilled) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: AppDimensions.padding16,
      height: AppDimensions.padding16,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.accent),
        color: isFilled ? AppColors.accent : AppColors.white,
      ),
    );
  }
}