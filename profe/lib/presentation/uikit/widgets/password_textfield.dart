

import 'package:flutter/material.dart';
import 'package:profe/core/utils/validators.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:profe/presentation/uikit/components/password_hidden_icon.dart';
import 'package:profe/presentation/uikit/components/password_shown_icon.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String?>? validator;
  final String labelText;
  final String hintText;

  const PasswordTextField({
    super.key,
    this.labelText = "",
    this.hintText = "",
    this.controller,
    this.validator,
  });

  @override
  State<StatefulWidget> createState() => TitledTextFieldState(labelText: labelText, hintText: hintText, controller: controller, validator: validator);
}

class TitledTextFieldState extends State<PasswordTextField> {
  final TextEditingController? controller;
  final FormFieldValidator<String?>? validator;
  String labelText = "";
  String hintText = "";
  bool _isObscured = true;

  TitledTextFieldState({
    this.controller,
    this.validator,
    required this.labelText,
    required this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labelText, style: TextStyle(color: AppColors.description),),
          TextFormField(
            validator: validator,
            controller: controller,
            cursorColor: AppColors.black,
            cursorRadius: Radius.circular(1000),
            obscureText: _isObscured,
            obscuringCharacter: "*",
            decoration: InputDecoration(
              suffixIcon: IconButton(onPressed: () {
                setState(() {
                  _isObscured = !_isObscured;
                });
              }, icon: _isObscured ? PasswordHiddenIcon() : PasswordShownIcon()),
              filled: true,
              fillColor: AppColors.inputBg,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0), borderSide: BorderSide.none),
              hint: Text(hintText, style: TextStyle(color: AppColors.inputIcon),),
            ),
          )
        ]
      )
    );
  }

  @override
  void dispose() {
    controller!.dispose();
  }
}