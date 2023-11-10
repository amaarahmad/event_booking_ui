import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
class ListTileComponent extends StatelessWidget {
  String title;
  IconData iconData;
  final VoidCallback? onPressed;
   ListTileComponent({super.key,required this.title,required this.iconData,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Icon(iconData,color: bColor.withOpacity(0.5),),
      title: Text(title),
    );
  }
}
