import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/component/button_component.dart';
import 'package:event_booking_app/utils/routes/routes.dart';
import 'package:event_booking_app/utils/routes/routes_names.dart';
import 'package:event_booking_app/view_screen/events/all_event_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class NoUpcomingEventScreen extends StatelessWidget {
  const NoUpcomingEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Container(
      height: height*0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             SizedBox(
               height: 20.h,
             ),
             Image.asset(AppAssets.noUpcoming),
             const Text('No Upcoming Event',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
             const Text('Lorem ipsum dolor sit amet',style: TextStyle(fontSize: 16),),
             const Text('consectur',style: TextStyle(fontSize: 16),),
           ],
         ),
          RoundButton(title: 'EXPLORE EVENTS',
              onPressed: ()=>Navigator.pushNamed(context, RoutesName.allEvent),)
        ],
      ),
    );
  }
}
