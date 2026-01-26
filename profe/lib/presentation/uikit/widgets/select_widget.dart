

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:profe/presentation/uikit/widgets/select_dropdown_icon.dart';

class SelectWidget extends StatefulWidget {
  final String hintText;
  final List<DropdownMenuEntry> entries;

  const SelectWidget({
    super.key,
    required this.hintText,
    required this.entries
  });

  @override
  State<StatefulWidget> createState() => _SelectWidgetState(hintText: hintText, entries: entries);
}

class _SelectWidgetState extends State<SelectWidget> {
  final String? hintText;
  final List<DropdownMenuEntry> entries;

  _SelectWidgetState({
    required this.hintText,
    required this.entries
  });

  @override
  Widget build(BuildContext context) {
    debugPrint(entries.toString());
    return Container(
      child: 
        DropdownMenu(
          hintText: hintText,
          menuStyle: MenuStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(AppColors.inputBg),
          ),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: AppColors.inputBg,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0), borderSide: BorderSide(color: AppColors.inputStroke)),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0), borderSide: BorderSide(color: AppColors.inputStroke)
          ),),
          width: double.infinity,
          trailingIcon: SelectDropdownIcon(),
          selectedTrailingIcon: SelectDropdownIcon(),
          dropdownMenuEntries: entries,
        )
    );
  }
}