import 'package:event_booking_app/component/text_widget.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';

class InterestComponent extends StatelessWidget {
  dynamic title,color;
  double? width;
   InterestComponent({super.key,this.title,this.color,this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width:width?? 120,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: myText(text: title,color: wColor),
      ),
    );
  }
}
