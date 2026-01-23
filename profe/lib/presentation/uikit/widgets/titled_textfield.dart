

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';

class TitledTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String labelText;
  final String hintText;

  const TitledTextField({
    Key? key, 
    this.controller, 
    required this.labelText, 
    required this.hintText}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labelText, style: TextStyle(color: AppColors.description),),
          TextField(
            controller: controller,
            cursorColor: AppColors.black,
            cursorRadius: Radius.circular(100000),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.inputStroke,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0), borderSide: BorderSide.none),
              hint: Text(hintText, style: TextStyle(color: AppColors.inputIcon),),
            ),
          )
        ]
      )
    );
  }
}