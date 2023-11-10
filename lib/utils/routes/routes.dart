import 'package:event_booking_app/utils/routes/routes_names.dart';
import 'package:event_booking_app/view_screen/auth_screen/forget_screen.dart';
import 'package:event_booking_app/view_screen/auth_screen/reset_password_screen.dart';
import 'package:event_booking_app/view_screen/auth_screen/sign_in_screen.dart';
import 'package:event_booking_app/view_screen/auth_screen/sign_up_screen.dart';
import 'package:event_booking_app/view_screen/events/all_event_screen.dart';
import 'package:event_booking_app/view_screen/events/empty_event.dart';
import 'package:event_booking_app/view_screen/events_detail_screen.dart';
import 'package:event_booking_app/view_screen/home_screen.dart';
import 'package:event_booking_app/view_screen/notification_screen.dart';
import 'package:event_booking_app/view_screen/onBoarding_screen/main_onBoarding_screen.dart';
import 'package:event_booking_app/view_screen/profile/event_organizer_profile.dart';
import 'package:event_booking_app/view_screen/profile/my_profile.dart';
import 'package:event_booking_app/view_screen/search_white_bar_screen.dart';
import 'package:event_booking_app/view_screen/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes{
static Route<dynamic>generateRoute(RouteSettings settings){

  switch(settings.name){
    case RoutesName.splash:
      return MaterialPageRoute(builder: (BuildContext context)=>const SplashScreen());
    case RoutesName.signIn:
      return MaterialPageRoute(builder: (BuildContext context)=>const SignInScreen());
    case RoutesName.signUp:
      return MaterialPageRoute(builder: (BuildContext context)=>const SignUpScreen());
    case RoutesName.home:
      return MaterialPageRoute(builder: (BuildContext context)=>const HomeScreen());
    case RoutesName.onBoarding:
      return MaterialPageRoute(builder: (BuildContext context)=>const MainOnBoardingScreen());
    case RoutesName.resetPassword:
      return MaterialPageRoute(builder: (BuildContext context)=>const ResetPasswordScreen());
    case RoutesName.forgetPassword:
      return MaterialPageRoute(builder: (BuildContext context)=>const ForgetPasswordScreen());
    case RoutesName.detailEvent:
      return MaterialPageRoute(builder: (BuildContext context)=>const EventsDetailScreen());
    case RoutesName.search:
      return MaterialPageRoute(builder: (BuildContext context)=>const SearchWhiteBarScreen());
    case RoutesName.emptyEvent:
      return MaterialPageRoute(builder: (BuildContext context)=>const EmptyEventScreen());
    case RoutesName.allEvent:
      return MaterialPageRoute(builder: (BuildContext context)=>const AllEventScreen());
    case RoutesName.myProfile:
      return MaterialPageRoute(builder: (BuildContext context)=>const MyProfile());
    case RoutesName.organizerProfile:
      return MaterialPageRoute(builder: (BuildContext context)=>const EventOrganizerProfile());
    case RoutesName.notification:
      return MaterialPageRoute(builder: (BuildContext context)=>const NotificationScreen());

    default:
      return MaterialPageRoute(builder: (_){
        return const Scaffold(
          body: Center(
            child: Text('No routes defined'),
          ),
        );
      });

  }


}


}