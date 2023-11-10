import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class IntroPageOne extends StatefulWidget {
  const IntroPageOne({super.key});

  @override
  State<IntroPageOne> createState() => _IntroPageOneState();
}

class _IntroPageOneState extends State<IntroPageOne> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          Expanded(child: Image.asset(AppAssets.onBoardingOne)),
          Container(
            height:height*.36,
            width: 97.w,
            decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Explore Upcoming and \n       Nearby Events',style: TextStyle(
                  color: wColor,fontSize: 22
                ),),
                const SizedBox(
                  height: 20,
                ),
                Text('In publishing and graphics design, Lorem is\n            a placeholder text commonly',style: TextStyle(
                    color: wColor.withOpacity(0.5),fontSize: 15
                ),)

              ],
            ),
          ),
        ],
      ),
    );
  }
}
