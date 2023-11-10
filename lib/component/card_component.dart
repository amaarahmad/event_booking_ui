import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CardComponent extends StatelessWidget {
  String imgUrl;
  String title;
   CardComponent({super.key,required this.imgUrl,required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2,
      child: SizedBox(
        width: 54.w,
        height:28.h,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 16.h,
              width: 82.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(

                    image: AssetImage(imgUrl),fit: BoxFit.contain)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Container(
                    height: 6.5.h,
                    width:46,
                    margin: EdgeInsets.only(top: 2.h),
                    decoration: BoxDecoration(
                      color: wColor,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Column(
                      children: [
                        Text('10',style: TextStyle(color: tabOneColor,fontSize: 20,fontWeight: FontWeight.bold),),
                        Text('June',style: TextStyle(color: tabOneColor,fontSize: 14,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: 18.w,
                  ),
                  Container(
                    height: 30,
                    width:30,
                      margin: EdgeInsets.only(top: 2.h),
                    decoration: BoxDecoration(
                      color: wColor,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(
                      child:   Image.asset(AppAssets.pick),
                    )
                  )

                ],
              ),
            ),
            Text(title,style: TextStyle(fontSize: 18),),
            Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 6.h),
                      child: Image.asset(AppAssets.stackOne),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 4.h),
                      child: Image.asset(AppAssets.stackTwo),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 2.h),
                      child: Image.asset(AppAssets.stackThree),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text('+20 Going',style: TextStyle(color: Colors.blue,fontSize: 12,fontWeight: FontWeight.bold),)
            ,
              ],
            ),
            Row(
              children: [
                Icon(Icons.location_on,color: bColor.withOpacity(0.3),),
                Text('36 Guild Street London, UK',style: TextStyle(color: bColor.withOpacity(0.5)),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
