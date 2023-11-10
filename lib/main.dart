import 'package:event_booking_app/style/colors.dart';
import 'package:event_booking_app/utils/routes/routes.dart';
import 'package:event_booking_app/utils/routes/routes_names.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context,orientation,deviceType){
      return GestureDetector(
        onTap: (){
          FocusManager.instance.primaryFocus!.unfocus();
        },
        child: GetMaterialApp(
          title: 'Event Booking App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(

            colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
            fontFamily: 'OpenSans',
            useMaterial3: true,
          ),
          initialRoute: RoutesName.onBoarding,
          onGenerateRoute: Routes.generateRoute,


        ),
      );
    });
  }
}

