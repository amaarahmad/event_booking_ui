
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';

class SimpleText extends StatelessWidget {
  String title;
   SimpleText({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(
      color: simpleTextColor,fontSize: 24,fontWeight: FontWeight.bold
    ),);
  }
}
