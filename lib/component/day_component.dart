import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
class DayComponent extends StatelessWidget {
  String title;
  final VoidCallback onpressed;
  bool isSelected;
  DayComponent(this.title,this.isSelected,{required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        height: 40,
        width: 80,
        decoration: BoxDecoration(

          color: isSelected?primaryColor:wColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected?primaryColor:bColor.withOpacity(0.4),
            width: 0.4
          )

        ),
        child: Center(child: Text(title,style: TextStyle(color: isSelected?wColor:bColor.withOpacity(0.5)),)),
      ),
    );
  }
}
