import 'package:flutter/material.dart';

class StrokeText extends StatelessWidget {
  const StrokeText(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.strokeColor,
      required this.textColor});

  final String text;
  final double fontSize;
  final Color strokeColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 6
              ..color = strokeColor,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w700,
              color: textColor),
        ),
      ],
    );
  }
}
