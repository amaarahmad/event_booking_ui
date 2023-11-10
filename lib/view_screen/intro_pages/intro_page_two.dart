import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class IntroPageTwo extends StatefulWidget {
  const IntroPageTwo({super.key});

  @override
  State<IntroPageTwo> createState() => _IntroPageTwoState();
}

class _IntroPageTwoState extends State<IntroPageTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(child: Image.asset(AppAssets.onBoardingTwo)),
          Container(
            height: 36.h,
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
                const Text('Web Have Modern Events\n       Calender features',style: TextStyle(
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
