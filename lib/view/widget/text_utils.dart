import 'package:flutter/material.dart';

class TextUtils extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextDecoration? textDecoration;
  final TextOverflow? textOverflow;
  final double? height;

  const TextUtils({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
    this.textDecoration,
    this.textOverflow,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          overflow: TextOverflow.ellipsis,
          height: height,
          decoration: textDecoration,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ));
  }
}
