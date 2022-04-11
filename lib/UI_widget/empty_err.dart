import 'package:flutter/material.dart';

Widget NotFoundPage(name){
  return Container(
    alignment: Alignment.center,
    child: Column(
      children: [
        SizedBox(height: 20,),
        Text(name.toString(),style: TextStyle(color: Color(0xff718093),fontSize: 17,fontWeight: FontWeight.w300),),
        SizedBox(height: 10,),
        Image.asset("assets/images/sadface.png")
      ],
    ),
  );
}