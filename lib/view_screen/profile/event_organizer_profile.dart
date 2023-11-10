import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/component/profile_tab_component.dart';
import 'package:event_booking_app/component/text_widget.dart';
import 'package:event_booking_app/controller/profile_controller.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventOrganizerProfile extends StatefulWidget {
  const EventOrganizerProfile({super.key});

  @override
  State<EventOrganizerProfile> createState() => _EventOrganizerProfileState();
}

class _EventOrganizerProfileState extends State<EventOrganizerProfile> {
 final ProfileTabController profileTabController=Get.put(ProfileTabController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration:  BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(AppAssets.amaar),fit: BoxFit.cover)
                ),
              ),
            ),

            const Center(child: Text('Amaar Ahmad',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('350',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    Text('Following',style: TextStyle(fontSize: 16),),
                  ],
                ),
                VerticalDivider(
                  thickness: 1,
                  color: bColor,
                ),
                Column(
                  children: [
                    Text('348',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    Text('Followers',style: TextStyle(fontSize: 16),),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 154,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)
                  ),child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.person_add_alt_outlined,color: wColor,),
                      myText(text: 'Follow',color: wColor)
                    ],
                ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 154,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: primaryColor
                    )
                  ),child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.messenger_outline,color: primaryColor,),
                      myText(text: 'Message',color: primaryColor)
                    ],
                  ),
                ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() =>Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(profileTabController.tabLabels.length, (index) => ProfileTabComponent(profileTabController.tabLabels[index],
                      ()=>profileTabController.changeIndex(index),
                  isSelected: index==profileTabController.selectedIndex.value)),
            ),),
            Obx(() => profileTabController.tabContent[profileTabController.selectedIndex.value])
          ],
        ),
      ),
    );
  }
}
