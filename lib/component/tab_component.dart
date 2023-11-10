import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../app_assets.dart';
import '../style/colors.dart';

class TabComponent extends StatelessWidget {
  String title;
  String imgUrl;
  Color color;
   TabComponent({super.key,required this.title,required this.imgUrl,required this.color});

  @override
  Widget build(BuildContext context) {

    return  Container(
      height: 5.h,
      width: 25.w,

      margin:  EdgeInsets.only(
          top: 21.5.h,
          left: 8.w),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imgUrl),
          const SizedBox(
            width: 5,
          ),
          Text(title,style: const TextStyle(color: wColor),)
        ],
      ),
    );
  }
}
