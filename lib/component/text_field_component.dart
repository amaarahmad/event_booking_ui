import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
class TextFieldComponent extends StatelessWidget {
  String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
   TextFieldComponent({super.key,required this.hintText,required this.prefixIcon,this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 317,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: bColor.withOpacity(0.1)
        ),
      ),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon,color: bColor.withOpacity(0.5),),
            hintText: hintText,
            hintStyle: TextStyle(color: bColor.withOpacity(0.5)),
            suffixIcon: Icon(suffixIcon,color: bColor.withOpacity(0.5)),
             border: InputBorder.none

          ),
        ),
      ),
    );
  }
}
