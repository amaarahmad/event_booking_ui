import 'package:event_booking_app/component/text_widget.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InviteFriendComponent extends StatelessWidget {
  String title;
  String subTitle;
  String imgUrl;
  InviteFriendComponent({super.key,required this.title,required this.subTitle,required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  CircleAvatar(
        backgroundImage: AssetImage(imgUrl),
      ),
      title: myText(text: title,textAlignment: TextAlign.start),
      subtitle: myText(text: subTitle,color:bColor.withOpacity(0.5) ,textAlignment: TextAlign.start),
      trailing: Icon(Icons.check_circle_outline),
    );
  }
}
