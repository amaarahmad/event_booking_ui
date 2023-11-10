import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/component/search_component.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
class SearchWhiteBarScreen extends StatelessWidget {
  const SearchWhiteBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  child: TextFormField(
                    style: const TextStyle(
                        color: wColor
                    ),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: primaryColor,
                        ),
                        hintText: '| Search',
                        hintStyle: TextStyle(
                            color: bColor.withOpacity(0.5),
                            fontSize: 20),
                        border: InputBorder.none),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 32,
                    width: 75,
                    decoration: BoxDecoration(
                        color: primaryColor,
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
                )
              ],
            ),
            SearchComponent(title: 'A Virtual evening of\nsmooth jazz',imgUrl: AppAssets.searchOne,),
            SearchComponent(title: "Jo malone london's\nmothers day",imgUrl: AppAssets.searchTwo,),
            SearchComponent(title: "Women's leadership\nConference",imgUrl: AppAssets.searchThree,),
            SearchComponent(title: 'International kids safe\nparents night out',imgUrl: AppAssets.searchFour,),
            SearchComponent(title: 'International gala\nmusic festival',imgUrl: AppAssets.searchFive,),
          ],
        ),
      ),
    );
  }
}
