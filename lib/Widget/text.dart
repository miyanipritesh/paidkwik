import 'package:flutter/material.dart';

Widget textWidget(name, Color color) {
  return Text(
    name,
    style: TextStyle(
      color: color,
    ),
  );
}

Widget textWidgetDart(name, Color color) {
  return Text(
    name,
    style: TextStyle(color: color, fontWeight: FontWeight.w600, fontSize: 23),
  );
}
