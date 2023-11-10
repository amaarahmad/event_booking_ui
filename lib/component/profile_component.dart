import 'package:event_booking_app/component/text_widget.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
class ProfileComponent extends StatelessWidget {
  const ProfileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 131,
      decoration: BoxDecoration(
        border: Border.all(
          color: primaryColor,
          width: 2
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.edit_calendar_outlined,color: primaryColor,),
            myText(text: 'Edit Profile',color: primaryColor)
          ],
        ),
      ),
    );
  }
}
