import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 25.0),
      child: ReadMoreText("Hello, I'm Amaar, and I'm passionate about crafting immersive and visually appealing mobile applications."
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
    );
  }
}
