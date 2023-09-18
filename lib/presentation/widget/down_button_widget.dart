import 'package:flutter/material.dart';

Widget downButton({
  required String title,
  required Function() tap,
  required Color color,
}) =>
    InkWell(
      onTap: tap,
      child: Container(
        width: 160.0,
        margin: const EdgeInsets.all(6.0),
        padding: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0), color: color),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
