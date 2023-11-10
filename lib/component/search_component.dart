import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class SearchComponent extends StatelessWidget {
  String title;
  String imgUrl;
   SearchComponent({super.key,required this.title,required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 11.h,
          width: 20.w,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imgUrl))
          ),
        ),
        SizedBox(
          width: 6.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('1st MAY - SAT -2:00',style: TextStyle(color: primaryColor),),
            Text(title,style: TextStyle(fontSize: 18),),

          ],
        )
      ],
    );
  }
}
