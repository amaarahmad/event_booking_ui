import 'package:event_booking_app/style/colors.dart';
import 'package:event_booking_app/view_screen/auth_screen/sign_in_screen.dart';
import 'package:event_booking_app/view_screen/home_screen.dart';
import 'package:event_booking_app/view_screen/intro_pages/intro_page_one.dart';
import 'package:event_booking_app/view_screen/intro_pages/intro_page_three.dart';
import 'package:event_booking_app/view_screen/intro_pages/intro_page_two.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainOnBoardingScreen extends StatefulWidget {
  const MainOnBoardingScreen({super.key});

  @override
  State<MainOnBoardingScreen> createState() => _MainOnBoardingScreenState();
}

class _MainOnBoardingScreenState extends State<MainOnBoardingScreen> {
  PageController pageController = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: const [
            IntroPageOne(),
            IntroPageTwo(),
           IntroPageThree()
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.95),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context, PageTransition(child: const HomeScreen(), type: PageTransitionType.fade,duration:const Duration(milliseconds:500 ) ));
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));

                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: wColor, fontSize: 18),
                    )),
                SmoothPageIndicator(
                    effect: const SlideEffect(
                      dotWidth: 10,
                      dotHeight: 10,
                      activeDotColor: wColor
                    ),
                    controller: pageController,
                    count: 3),
                onLastPage
                    ? TextButton(
                        onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInScreen()));
                        },
                        child: const Text('Done',
                            style: TextStyle(color: wColor, fontSize: 18)))
                    : TextButton(
                        onPressed: () {
                          pageController.nextPage(
                              duration: const Duration(milliseconds: 700),
                              curve: Curves.linear);
                        },
                        child: const Text('Next',
                            style: TextStyle(color: wColor, fontSize: 18))),
              ],
            ))
      ],
    ));
  }
}
