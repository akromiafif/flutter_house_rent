import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularIconButton extends StatelessWidget {
  const CircularIconButton(
      {Key? key, required this.iconUrl, required this.color})
      : super(key: key);

  final String iconUrl;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(iconUrl),
    );
  }
}
