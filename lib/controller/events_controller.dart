
import 'package:event_booking_app/view_screen/events/no_event.dart';
import 'package:event_booking_app/view_screen/events/past_event_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EventsController extends GetxController {
 RxInt selectedTabIndex=0.obs;

List<String> tabLabels=[
  'Upcoming',
  'Past Events',
];

List<Widget>tabContent=[
 const NoUpcomingEventScreen(),
  const PastEventScreen()
];

 void onChangeIndex( int index){
   selectedTabIndex.value=index;
 }


}