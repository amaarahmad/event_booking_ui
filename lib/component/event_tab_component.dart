import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
class EventTabComponent extends StatelessWidget {
  String title;
  final VoidCallback onPressed;
  final bool isSelected;
   EventTabComponent(this.title,this.onPressed,{super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 30,
        width: 120,

        decoration: BoxDecoration(
        color: isSelected?wColor:null,
          borderRadius:isSelected? BorderRadius.circular(20):BorderRadius.zero
        ),
        child: Center(child: Text(title,style: TextStyle(color: isSelected?primaryColor:bColor.withOpacity(0.5),fontSize: 15),)),

      ),
    );
  }
}
