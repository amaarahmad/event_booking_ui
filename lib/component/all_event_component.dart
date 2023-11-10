import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class AllEventComponent extends StatelessWidget {
  String title;
  String eventDate;
  String imgUrl;
  String address;
  AllEventComponent({super.key,required this.title,required this.imgUrl,required this.eventDate,required this.address});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 12.h,
          width: 20.w,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imgUrl)),
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(eventDate,style: TextStyle(color: primaryColor),),
            Text(title,style: TextStyle(fontSize: 18),),
            Row(
              children: [
                Icon(Icons.location_on_rounded,color: bColor.withOpacity(0.5),),
                SizedBox(
                  width: 10,
                ),
                Text(address,style: TextStyle(color: bColor.withOpacity(0.5)),)
              ],
            )

          ],
        )
      ],
    );
  }
}
