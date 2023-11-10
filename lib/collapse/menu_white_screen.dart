import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/component/list_tile_component.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:event_booking_app/utils/routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:event_booking_app/app_assets.dart';
import 'package:sizer/sizer.dart';
class MenuWhite extends StatefulWidget {
  const MenuWhite({super.key});

  @override
  State<MenuWhite> createState() => _MenuWhiteState();
}

class _MenuWhiteState extends State<MenuWhite> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Align(
        alignment: Alignment.topRight,
        child: Column(

          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
              height: 11.h,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.myProfile);
              },
              child: CircleAvatar(
                backgroundImage: AssetImage(AppAssets.boy),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            const Text('Ashfak Sayem',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            const SizedBox(
              height: 30,
            ),

            ListTileComponent(
                onPressed: (){
                  Navigator.pushNamed(context, RoutesName.organizerProfile);

                },
                title: 'My Profile', iconData: Icons.person_outline),
            ListTileComponent(
                onPressed: (){
                  Navigator.pushNamed(context, RoutesName.notification);
                },
                title: 'Notifications', iconData: Icons.notification_add_outlined),
            ListTileComponent(title: 'Calender', iconData: Icons.calendar_today_outlined),
            ListTileComponent(title: 'Bookmark', iconData: Icons.bookmark_border),
            ListTileComponent(title: 'Contact us', iconData: Icons.email_outlined),
            ListTileComponent(title: 'Setting', iconData: Icons.settings),
            ListTileComponent(title: 'Helps & FAQs', iconData: Icons.help_outline),
            ListTileComponent(title: 'Sign Out', iconData: Icons.logout_outlined),
             SizedBox(
              height: 10.h,
            ),
            Container(
              height: 46,
              width: 150,
              decoration: BoxDecoration(
                color: conColor.withOpacity(0.1)
              ),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.kayaking,color: conColor,),
                    Text('Upgrade pro',style: TextStyle(color: conColor),)
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
