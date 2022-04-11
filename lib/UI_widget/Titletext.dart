import 'package:flutter/material.dart';

Widget TitleHead(name) {
  return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        name,
        style: TextStyle(fontSize: 19, fontWeight: FontWeight.w100),
      ));
}
