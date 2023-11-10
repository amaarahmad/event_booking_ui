import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/component/button_component.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:event_booking_app/view_screen/events/invite_bottom.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EventsDetailScreen extends StatefulWidget {
  const EventsDetailScreen({super.key});

  @override
  State<EventsDetailScreen> createState() => _EventsDetailScreenState();
}

class _EventsDetailScreenState extends State<EventsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 30.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppAssets.eventPic),
                        fit: BoxFit.cover)),
                child: Container(
                  margin: EdgeInsets.only(top: 6.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: wColor,
                                size: 24,
                              )),
                          const Text(
                            'Event Detail',
                            style: TextStyle(color: wColor, fontSize: 24),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 4.h,
                        width: 8.w,
                        decoration: BoxDecoration(
                            color: wColor.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Icon(
                            Icons.bookmark,
                            color: wColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 7.h,
                width: 69.w,
                margin: EdgeInsets.only(top: 27.h, left: 15.w),
                decoration: BoxDecoration(
                    color: wColor, borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Image.asset(AppAssets.stackOne),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Image.asset(AppAssets.stackTwo),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Image.asset(AppAssets.stackThree),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    const Text(
                      '+20 Going',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8.w),
                    GestureDetector(
                      onTap: (){

                        inviteBottom(context);
                      },
                      child: Container(
                        height: 3.5.h,
                        width: 19.w,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Invite',
                            style: TextStyle(color: wColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'International Band\nMusic Concert',
                  style: TextStyle(fontSize: 35),
                ),
                Row(
                  children: [
                    Container(
                      height: 6.h,
                      width: 12.w,
                      decoration: BoxDecoration(
                          color: primaryColor.withOpacity(0.09),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Icon(
                          Icons.calendar_month,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '14 December, 2021',
                          style: TextStyle(fontSize: 26),
                        ),
                        Text(
                          'Tuesday, 4:00PM - 9:00PM',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 6.h,
                      width: 12.w,
                      decoration: BoxDecoration(
                          color: primaryColor.withOpacity(0.09),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Icon(
                          Icons.location_on_rounded,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gala Convention Center',
                          style: TextStyle(fontSize: 26),
                        ),
                        Text(
                          '36 Guild Street London, Uk',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 6.h,
                          width: 12.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(AppAssets.ashfak),
                                  fit: BoxFit.contain)),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ashfak Sayem',
                              style: TextStyle(fontSize: 26),
                            ),
                            Text(
                              'Organizer',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 4.h,
                      width: 18.w,
                      decoration: BoxDecoration(
                          color: primaryColor.withOpacity(0.06),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          'Follow',
                          style: TextStyle(color: primaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'About Event',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Enjoy Your Favourite Dishe and a lovely your\nfriends and family and have a great time.\nFood from local food truck',
                  style: TextStyle(fontSize: 16),
                ),
                Center(child: RoundButton(title: 'BUY TICKET \$120'))
              ],
            ),
          ),
        )
        ],
      ),
    );
  }
}
