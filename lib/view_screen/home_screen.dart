import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/collapse/menu_white_screen.dart';
import 'package:event_booking_app/component/card_component.dart';
import 'package:event_booking_app/component/tab_component.dart';
import 'package:event_booking_app/component/text_widget.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:event_booking_app/view_screen/events/invite_bottom.dart';
import 'package:event_booking_app/view_screen/events_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/routes/routes_names.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  bool isCollapsed=true;
  double? screenWidth,screenHeight;
  final Duration duration=const Duration(milliseconds: 600);

  late AnimationController _controller;
  late Animation<double>_scaleAnimation;


  @override
  void initState() {
    // TODO: implement initState
    _controller=AnimationController(vsync: this,duration: duration);
    _scaleAnimation=Tween<double>(begin: 1,end:0.8).animate(_controller);
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    screenHeight=size.height;
    screenWidth=size.width;
    print('Rebuild');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:  Stack(
        children: [
          const MenuWhite(),
          AnimatedPositioned(
            top:0,
            bottom:2,
            left: isCollapsed?0:0.6*screenWidth!,
            right:isCollapsed?0: -0.2*screenWidth!,
            duration: duration,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Material(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                elevation: 8,
                animationDuration: duration,
                child: Column(
                  children: [

                    Stack(

                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              TabComponent(
                                title: 'Sports',
                                imgUrl: AppAssets.ball,
                                color: tabOneColor,
                              ),
                              TabComponent(
                                title: 'Music',
                                imgUrl: AppAssets.music,
                                color: tabTwoColor,
                              ),
                              TabComponent(
                                title: 'Food',
                                imgUrl: AppAssets.food,
                                color: tabThreeColor,
                              ),
                              TabComponent(
                                title: 'Art',
                                imgUrl: AppAssets.art,
                                color: tabFourColor,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 21.h,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(40),
                                  bottomLeft: Radius.circular(40))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if(isCollapsed)
                                            _controller.forward();
                                          else
                                            _controller.reverse();
                                          isCollapsed=!isCollapsed;
                                        });
                                      },
                                      icon: const Icon(Icons.menu_outlined,
                                          color: wColor, size: 30)),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Current Location',
                                            style:
                                            TextStyle(color: wColor.withOpacity(0.7)),
                                          ),
                                          const Icon(
                                            Icons.arrow_drop_down_rounded,
                                            color: wColor,
                                          )
                                        ],
                                      ),
                                      const Text(
                                        'New York, USA',
                                        style: TextStyle(color: wColor),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 36,
                                    width: 36,
                                    decoration: BoxDecoration(
                                        color: secondColor,
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Center(
                                      child: Image.asset(AppAssets.bell),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: TextFormField(
                                      keyboardType: TextInputType.streetAddress,
                                      style: const TextStyle(
                                          color: wColor
                                      ),
                                      decoration: InputDecoration(
                                          prefixIcon: const Icon(
                                            Icons.search,
                                            color: wColor,
                                          ),
                                          hintText: '| Search',
                                          hintStyle: TextStyle(
                                              color: bColor.withOpacity(0.15),
                                              fontSize: 20),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: GestureDetector(
                                      onTap: (){
                                        inviteBottom(context);
                                      },
                                      child: Container(
                                        height: 32,
                                        width: 75,
                                        decoration: BoxDecoration(
                                            color: secondColor,
                                            borderRadius: BorderRadius.circular(20)),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image.asset(AppAssets.filter),
                                            const Text(
                                              'Filters',
                                              style: TextStyle(color: wColor),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),


                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Upcoming Events',
                          style: TextStyle(fontSize: 18),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, RoutesName.emptyEvent);

                          },
                          child: Text(
                            'See All',
                            style: TextStyle(fontSize: 16, color: bColor.withOpacity(0.5)),
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          CardComponent(
                            title: ' International Band Mu...',
                            imgUrl: AppAssets.cardOne,
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          CardComponent(
                            title: "Jo Malone London's Mo...",
                            imgUrl: AppAssets.cardTwo,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      height: 16.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          color: conColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'Invite your friends',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Get \$20 for ticket',
                                  style: TextStyle(
                                      fontSize: 14, color: bColor.withOpacity(0.7)),
                                ),
                                Container(
                                  height: 32,
                                  width: 72,
                                  decoration: BoxDecoration(
                                      color: conColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                    child: Text(
                                      'INVITE',
                                      style: TextStyle(color: wColor),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                              right: 0,
                              top: 8,
                              child: Image.asset(
                                AppAssets.handPic,
                                fit: BoxFit.cover,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Nearby You',
                          style: TextStyle(fontSize: 18),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const EventsDetailScreen()));
                          },
                          child: Text(
                            'See All',
                            style: TextStyle(fontSize: 16, color: bColor.withOpacity(0.5)),
                          ),
                        ),
                      ],
                    ),
                    

                  ],
                ),
              ),
            ),
          ),

        ],

      ),
    );
  }
}
