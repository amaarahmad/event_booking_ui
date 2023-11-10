import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/component/notification_component.dart';
import 'package:event_booking_app/component/text_widget.dart';
import 'package:flutter/material.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: myText(text: 'Notification',fontWeight: FontWeight.bold),
      ),
      body: Column(
        children: [
          NotComponentAR(title: 'David Silbia',subTitle: 'Invite jo Malone London Mother',
              imgUrl: AppAssets.not1,time: 'Just now'),
          NotComponentF(title: 'Adnan Safi',subTitle: 'Started following you',imgUrl: AppAssets.notf1,time: '5 min ago',),
          NotComponentAR(title: 'Joan Baker',subTitle: 'Invite A virtual Evening of Smooth Jazz',
              imgUrl: AppAssets.not2,time: '5 min ago'),
          NotComponentF(title: 'Ronald C Kinch',subTitle: 'Likes your event',imgUrl: AppAssets.notf2,time: '1 hr ago',),
          NotComponentF(title: 'Clara Tolson',subTitle: 'Join Your Event Gala Musical Festival',imgUrl: AppAssets.notf3,time: '2 hr ago',),
          NotComponentAR(title: 'Jennifer Fritz',subTitle: 'Invite you International kids Safe',
              imgUrl: AppAssets.not3,time: 'Tue,5:10 pm'),
          NotComponentF(title: 'Eric F Picker',subTitle: 'Started following you',imgUrl: AppAssets.notf4,time: 'Wed,3:30 pm',),

        ],
      ),
    );
  }
}
