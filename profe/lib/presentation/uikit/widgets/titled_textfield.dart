

import 'package:flutter/material.dart';
import 'package:profe/core/utils/validators.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:profe/presentation/uikit/components/password_hidden_icon.dart';
import 'package:profe/presentation/uikit/components/password_shown_icon.dart';
import 'package:profe/presentation/uikit/widgets/base_textfield.dart';

class TitledTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String?>? validator;
  final String labelText;
  final String hintText;

  TitledTextField({
    super.key, 
    this.controller,
    this.validator,
    required this.labelText,
    required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labelText, style: TextStyle(color: AppColors.description),),
          BaseTextField(hintText: hintText, validator: validator, controller: controller,)
        ]
      )
    );
  }

  @override
  void dispose() {
    controller!.dispose();
  }
}