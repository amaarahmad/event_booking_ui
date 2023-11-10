import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  String title;
  final VoidCallback? onPressed;
   RoundButton({super.key,required this.title,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 58,
        width: 271,
        decoration: BoxDecoration(
         // color: primaryColor.withOpacity(0.9),
            gradient: LinearGradient(colors: [
              primaryColor,primaryColor.withOpacity(0.7)
            ],begin: Alignment.topLeft,end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text(title,style: TextStyle(color: wColor,fontSize: 16),),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(

                  color: primaryColor,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Center(
                child:Icon(Icons.arrow_forward_rounded,color: wColor,)),
            )
          ],
        ),
      ),
    );
  }
}
