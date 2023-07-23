import 'package:flutter/material.dart';

Widget customButton({required String level, Color? color}) {
  return Container(
    height: 30,
    width: 300,
    decoration: BoxDecoration(
      color: color,
      border: Border.all(width: 2, color: Colors.blueAccent),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Center(child: Text(level)),
  );
}
