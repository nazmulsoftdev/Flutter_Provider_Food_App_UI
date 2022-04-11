import 'package:flutter/material.dart';

Widget SearchBar(){
  return Card(
    elevation: 0.5,
    child: TextField(
      decoration: InputDecoration(
        hintText: "Food Search",
        border: InputBorder.none,
        prefixIcon: Icon(Icons.search_sharp,color: Colors.black,)
      ),
    ),
  );
}