import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';

class SwitchWidget extends StatefulWidget {
  bool value;
  final ValueChanged? onChanged;

  SwitchWidget({
    super.key,
    required this.value,
    this.onChanged
  });

  @override
  State<StatefulWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {



  @override
  Widget build(BuildContext context) {
    return Switch(
      value: widget.value,
      activeThumbColor: AppColors.white,
      inactiveThumbColor: AppColors.white,
      inactiveTrackColor: AppColors.inputStroke,
      activeTrackColor: AppColors.accent,
      trackOutlineColor: WidgetStatePropertyAll(AppColors.transparent),
      thumbIcon: WidgetStatePropertyAll(Icon(Icons.circle)),
      onChanged: (value) {
        widget.onChanged!(value);
        setState(() {
          widget.value = value;
        });
      }
    );    
  }
}