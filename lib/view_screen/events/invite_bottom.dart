import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/component/button_component.dart';
import 'package:event_booking_app/component/invite_friend_component.dart';
import 'package:event_booking_app/component/text_widget.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
void inviteBottom(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
    context: context,
    builder: (BuildContext context) {
      // You can adjust the height by wrapping your content
      // in a Container with a fixed height.
      return Stack(
        children: [
          Positioned(
              bottom: 05,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: RoundButton(title: 'INVITE'),
              )),
          Container(
            height: 700,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10))
            ),
            child: ListView(
              children: [

                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: myText(text: 'Invite Friends',textAlignment: TextAlign.start,fontWeight: FontWeight.bold,size: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 327,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: bColor.withOpacity(0.5)),
                  ),
                  child:Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Search',
                            suffixIcon: Icon(Icons.search_outlined,color: primaryColor,),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ) ,
                ),
                InviteFriendComponent(title: 'Alex Lee', subTitle: '2k Followers', imgUrl: AppAssets.notf1),
                InviteFriendComponent(title: 'Micheal Ulasi', subTitle: '1k Followers', imgUrl: AppAssets.notf2),
                InviteFriendComponent(title: 'Cristofer', subTitle: '30k Followers', imgUrl: AppAssets.notf3),
                InviteFriendComponent(title: 'David Silbia', subTitle: '500k Followers', imgUrl: AppAssets.notf4),
                InviteFriendComponent(title: 'Ashfak Sayem', subTitle: '502 Followers', imgUrl: AppAssets.not1),
                InviteFriendComponent(title: 'Rocks', subTitle: '306k Followers', imgUrl: AppAssets.not2),
                InviteFriendComponent(title: 'Roman', subTitle: '690k Followers', imgUrl: AppAssets.not3),
              ],
            ),
          )
        ],
      );
    },
  );
}
