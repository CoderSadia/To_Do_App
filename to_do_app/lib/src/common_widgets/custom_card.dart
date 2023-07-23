import 'package:flutter/material.dart';

Widget customCard({String? title, String? message, Color? color}) {
  return Container(
    alignment: Alignment.center,
    height: 100,
    width: double.infinity,
    decoration: BoxDecoration(
      color: color,
      border: Border.all(width: 2, color: Colors.blueAccent),
      borderRadius: BorderRadius.circular(12),
    ),
    child: ListTile(

      contentPadding: null,
      title: Text(title!),
      subtitle: Text(message!),
      trailing: const Icon(Icons.delete),
    ),
  );
}
