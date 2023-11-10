import 'package:event_booking_app/component/text_widget.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotComponentAR extends StatelessWidget {
  String title;
  String imgUrl;
  String subTitle;
  String time;
   NotComponentAR({super.key,required this.title,required this.subTitle,required this.imgUrl,required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(imgUrl),
          ),
          title: myText(
              text: title,
              fontWeight: FontWeight.bold,
              textAlignment: TextAlign.start),
          subtitle: myText(
              text: subTitle,
              textAlignment: TextAlign.start,
              color: bColor.withOpacity(0.5)),
          trailing: myText(text: time, color: bColor.withOpacity(0.5)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 36,
              width: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: bColor.withOpacity(0.2)),
              ),
              child: const Center(
                child: Text('Reject'),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              height: 36,
              width: 95,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text('Accept',style: TextStyle(color: wColor),),
              ),
            )
          ],
        )
      ],
    );
  }
}
class NotComponentF extends StatelessWidget {
  String title;
  String imgUrl;
  String subTitle;
  String time;
  NotComponentF({super.key,required this.title,required this.subTitle,required this.imgUrl,required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  CircleAvatar(
        backgroundImage: AssetImage(imgUrl),
      ),
      title: myText(text: title,textAlignment: TextAlign.start),
      subtitle: myText(text: subTitle,color:bColor.withOpacity(0.5) ,textAlignment: TextAlign.start),
      trailing: myText(text: time,color: bColor.withOpacity(0.5)),
    );
  }
}
