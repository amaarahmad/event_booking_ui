import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/component/interest_component.dart';
import 'package:event_booking_app/component/profile_component.dart';
import 'package:event_booking_app/component/text_widget.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: myText(text: 'Profile',size: 20,fontWeight: FontWeight.bold),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            const Center(
              child:  Row(
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
            ),
            const Center(child: ProfileComponent()),
            myText(text: 'About me',fontWeight: FontWeight.bold,size: 18),
            const ReadMoreText("Hello, I'm Amaar, and I'm passionate about crafting immersive and visually appealing mobile applications."
                " With a focus on Flutter, I've embarked on an exciting journey into the world of cross-platform app development. "
                "My expertise lies in harnessing the power of Dart and Flutter to create fluid, responsive, and feature-rich mobile experiences that delight"
                " users. As a Flutter developer, I thrive on pushing the boundaries of design and functionality, all while ensuring the highest standards "
                "of code quality and performance."
                " Join me as I explore the boundless possibilities of Flutter and embark on a continuous quest for innovation in mobile app development...",
            trimLines: 3,
              trimLength: 200,
              trimCollapsedText: "Read more",
              trimExpandedText: "Read less",
              moreStyle: TextStyle(color: primaryColor),
              lessStyle: TextStyle(color: primaryColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myText(text: 'Interest',fontWeight: FontWeight.bold,size: 18),
                Container(
                  height: 28,
                  width: 110,
                  decoration: BoxDecoration(
                      color: primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Icons.edit,color: primaryColor,),
                        myText(text: 'CHANGE',color: primaryColor)
                      ],
                    ),
                  ),

                )
              ],
            ),
            Row(
              children: [
                InterestComponent(title: 'Games online',color: primaryColor,),
                InterestComponent(title: 'Concert',color: Colors.redAccent,width: 100,),
                InterestComponent(title: 'Music',color: Colors.orange,width: 90,),


              ],
            ) ,

            Row(
              children: [
                InterestComponent(title: 'Art',color: Colors.purple,width: 70,),
                InterestComponent(title: 'Movies',color: Colors.blueAccent,width: 90,),


              ],
            )



          ],
        ),
      ),
    );
  }
}
