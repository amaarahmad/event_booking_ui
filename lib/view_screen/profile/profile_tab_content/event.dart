import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/component/all_event_component.dart';
import 'package:flutter/material.dart';

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AllEventComponent(title: "Jo Malone London's Mother's\nDay Presents", imgUrl: AppAssets.searchTwo, eventDate: 'Wed, Apr 28, 5:30 PM',address: 'Radius Gallery - CA',),
            AllEventComponent(title: "A virtual Evening of\nSmooth Jazz", imgUrl: AppAssets.searchOne, eventDate: 'Sat, May 1, 2:00 PM',address: 'Lot 13-Ocland,CA',),
            AllEventComponent(title: "Women's Leadership\nConference 2021", imgUrl: AppAssets.searchThree, eventDate: 'Sat, Apr 24, 3:30 PM',address: '53 Bush st, CA',),
           //AllEventComponent(title: "International Kids Safe\nParents Night Out", imgUrl: AppAssets.searchFour, eventDate: 'Sun, June 20, 4:30 PM',address: 'Lot 13-Ocland,CA',),
           // AllEventComponent(title: "International Gala Music\nFestival", imgUrl: AppAssets.searchFive, eventDate: 'Tue, Feb 10, 2:00 AM',address: '36 Guild streek, uk',),

          ],
        ),
      ),
    );
  }
}
