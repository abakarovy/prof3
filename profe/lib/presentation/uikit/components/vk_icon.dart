
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profe/presentation/uikit/app_theme.dart';

class VkIcon extends StatelessWidget {
  final double size;
  final Color color;

  const VkIcon({
    super.key,
    this.size = 32,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/vk_logo.svg",
      width: size,
      height: size,
    );
  }
}
