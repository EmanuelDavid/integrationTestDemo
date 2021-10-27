import 'package:flutter/material.dart';

extension WidgetHelper on Widget {
  border(Color color, double width, double cornerRadius) {
    return Container(decoration: BoxDecoration(
      border: Border.all(
        width: width,
        color: color,
      ),
      borderRadius: BorderRadius.circular(cornerRadius),
    ), child: this);
  }
}