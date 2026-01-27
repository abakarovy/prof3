

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';

class BaseTextField extends StatelessWidget {

  final TextEditingController? controller;
  final FormFieldValidator<String?>? validator;
  final String hintText;

  BaseTextField({
    super.key, 
    this.controller,
    this.validator,
    required this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
            validator: validator,
            controller: controller,
            cursorColor: AppColors.black,
            cursorRadius: Radius.circular(1000),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.inputBg,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0), borderSide: BorderSide(color: AppColors.inputStroke)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0), borderSide: BorderSide(color: AppColors.inputStroke)),
              errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0), borderSide: BorderSide(color: AppColors.inputStroke)),
              hint: Text(hintText, style: TextStyle(color: AppColors.inputIcon),),
            ),
          );
  }
}