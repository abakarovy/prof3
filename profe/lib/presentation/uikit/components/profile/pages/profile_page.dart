
import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:profe/presentation/uikit/widgets/big_button.dart';
import 'package:profe/presentation/uikit/widgets/iconed_button.dart';
import 'package:profe/presentation/uikit/widgets/image_picker.dart';
import 'package:profe/presentation/uikit/widgets/my_orders_icon.dart';
import 'package:profe/presentation/uikit/widgets/settings_icon.dart';
import 'package:profe/presentation/uikit/widgets/shallow_button.dart';
import 'package:profe/presentation/uikit/widgets/switch_widget.dart';

class ProfilePage extends StatelessWidget {

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.directional(top: AppDimensions.padding32, bottom: AppDimensions.padding24, start: AppDimensions.padding32, end: AppDimensions.padding32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppDimensions.padding24,
        children: [
          Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Эдуард", style: TextStyle(fontSize: AppTexts.fontSizeTitle1, fontWeight: AppTexts.fontWeightBold),),
              Text("example@mail.com", style: TextStyle(fontSize: AppTexts.fontSizeHeadline, fontWeight: AppTexts.fontWeightRegular, color: AppColors.caption),)
            ],
          ),

          Flex(
            direction: Axis.vertical,
            spacing: AppDimensions.padding16,
            children: [
              BigButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(335.0, 56.0),
                  maximumSize: Size(double.infinity, double.infinity),
                  backgroundColor: AppColors.pure,
                  shadowColor: AppColors.transparent,
                  padding: EdgeInsets.zero,
                  disabledBackgroundColor: AppColors.accentInactive
                ), 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: AppDimensions.padding16,
                  children: [
                    MyOrdersIcon(width: 32.0, height: 32.0,),
                    Text("Мои заказы", style: TextStyle(color: AppColors.black, fontWeight: AppTexts.fontWeightBold),),
                  ],
                ),
              ),
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flex(
                    direction: Axis.horizontal,
                    spacing: AppDimensions.padding16,
                    children: [
                      SettingsIcon(width: 32.0, height: 32.0,),
                      Text("Уведомления", style: TextStyle(color: AppColors.black, fontWeight: AppTexts.fontWeightBold),),
                    ]
                  ),
                  SwitchWidget(value: false, onChanged: (value) {},)
                ],
              ),
            ],
          ),
          Expanded(
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ShallowButton(
                  onPressed: () {},
                  child: Text("Политика конфиденциальности", style: TextStyle(color: AppColors.caption, fontWeight: AppTexts.fontWeightRegular)),
                ),
                ShallowButton(
                  onPressed: () {},
                  child: Text("Пользовательское соглашение", style: TextStyle(color: AppColors.caption, fontWeight: AppTexts.fontWeightRegular)),
                ),
                ShallowButton(
                  onPressed: () {},
                  child: Text("Выход", style: TextStyle(color: AppColors.error, fontWeight: AppTexts.fontWeightRegular)),
                ),
                ImagePickerWidget()
              ],
            )
          )
        ],
      ),
    );
  }
}