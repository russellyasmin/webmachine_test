import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CostumText extends StatelessWidget {
  final String text;
  final double Size;
  final Color color;
  final FontWeight weight;

  const CostumText(
      {super.key,
      required this.text,
      required this.Size,
      required this.color,
      required this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: Size ?? 16,
          color: color ?? Colors.black,
          fontWeight: weight ?? FontWeight.normal),
    );
  }
}
