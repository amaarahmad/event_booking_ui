import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/component/text_widget.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
class ReviewComponent extends StatelessWidget {
  dynamic title;
  ReviewComponent({super.key,this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,

      children: [

        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(AppAssets.ashfak),
          ),
          title: Align(
              alignment: Alignment.topLeft,
              child: myText(text: title,fontWeight: FontWeight.bold)),
          subtitle: const Row(
            children: [
              Icon(Icons.star,color: Colors.orange,size: 20,),
              Icon(Icons.star,color: Colors.orange,size: 20,),
              Icon(Icons.star,color: Colors.orange,size: 20,),
              Icon(Icons.star,color: Colors.orange,size: 20,),
              Icon(Icons.star,color: Colors.orange,size: 20,),
            ],
          ),
          trailing: myText(text: '10 July',color: bColor.withOpacity(0.5)),
        ),
        myText(text: 'Cinemas is the ultimate experience to\n see new movies'),
        Divider()
      ],
    );
  }
}
