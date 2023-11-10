import 'package:event_booking_app/style/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ProfileTabComponent extends StatelessWidget {
  String title;
  VoidCallback onPressed;
  bool isSelected;
  ProfileTabComponent(this.title,this.onPressed,{required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Text(title,style: TextStyle(color: isSelected?primaryColor:bColor,fontSize: 16,
          ),),
        ],
      ),
    );
  }
}
