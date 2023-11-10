import 'package:event_booking_app/component/button_component.dart';
import 'package:event_booking_app/component/simple_text.dart';
import 'package:event_booking_app/component/text_field_component.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:event_booking_app/utils/routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SimpleText(title: 'Reset Password'),
                Text("Please enter your email address to\nrequest a password reset"),
              ],
            ),
          ),
          Center(child: TextFieldComponent(hintText: 'abc@gmail.com', prefixIcon: Icons.email_outlined)),
          Center(child: RoundButton(

              onPressed: (){
                Navigator.pushNamed(context, RoutesName.forgetPassword);
              },
              title: 'SEND')),

        ],
      ),

    );
  }
}
