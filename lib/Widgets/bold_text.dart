import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final TextAlign align;
  final int? maxLines;
  final TextOverflow? overflow;

  const BoldText(
      this.text, {
        super.key,
        this.size = 16,
        this.color = Colors.black,
        this.align = TextAlign.start,
        this.maxLines,
        this.overflow,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: color,
      ),
    );
  }
}
