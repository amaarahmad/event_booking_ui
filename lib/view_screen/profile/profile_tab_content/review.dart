import 'package:event_booking_app/component/review_component.dart';
import 'package:flutter/material.dart';
class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ReviewComponent(title: 'Zenifero Bolex',),
          ReviewComponent(title: 'Rocks Velkeinjen',),
          ReviewComponent(title: 'Angelina Zolly',),
        ],
      ),
    );
  }
}
