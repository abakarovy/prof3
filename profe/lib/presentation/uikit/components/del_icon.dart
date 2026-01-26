
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DelIcon extends StatelessWidget {
  final double size;
  final Color color;

  const DelIcon({
    super.key,
    this.size = 32,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/del_icon.svg",
      width: size,
      height: size,
    );
  }
}