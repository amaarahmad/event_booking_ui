import 'package:flutter/material.dart';
Widget myText({
  int? maxLine,
  required String text,TextAlign textAlignment=TextAlign.center, double size=15, FontWeight fontWeight= FontWeight.w500, Color color= Colors.black,}){
  return Text(
    maxLines: maxLine,
    text,style:  TextStyle(
    color:color,
    fontSize: size,
    overflow: TextOverflow.ellipsis,
    fontWeight:fontWeight,
  ),
    textAlign: textAlignment,
  );
}