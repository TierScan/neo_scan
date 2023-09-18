import 'package:flutter/material.dart';

Widget titleBarra({
  required String text,
  required Color color,
  required double height,
  required double size,
}) =>
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 12.0),
        Container(height: height, width: 8.0, color: color),
        const SizedBox(width: 8.0),
        Text(
          text,
          style: TextStyle( color: Colors.white, fontSize: size, fontWeight: FontWeight.bold),
        ),
      ],
    );
