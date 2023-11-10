
import 'package:event_booking_app/view_screen/profile/profile_tab_content/review.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view_screen/profile/profile_tab_content/about.dart';
import '../view_screen/profile/profile_tab_content/event.dart';

class ProfileTabController extends GetxController{

  RxInt selectedIndex=0.obs;

  List<String>tabLabels=[
    'ABOUT',
    'EVENT',
    'REVIEWS'
  ];

  List<Widget>tabContent=[
    const About(),
    const Event(),
    const Review()

  ];

  void changeIndex(int index){
    selectedIndex.value=index;
  }
}