import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
class SocialMediaButton extends StatelessWidget {
  String title;
  String imgUrl;
  SocialMediaButton({super.key,required this.title,required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: wColor,
      elevation: 2,
      child: Container(
        height: 56,
        width: 273,
        decoration: BoxDecoration(
          color: wColor.withOpacity(0.5)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imgUrl),
            SizedBox(
              width: 20,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
