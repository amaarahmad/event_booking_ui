import 'package:event_booking_app/component/button_component.dart';
import 'package:event_booking_app/component/simple_text.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:event_booking_app/view_screen/auth_screen/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SimpleText(title: 'Verification'),
                const Text(
                    "We've send you the verification\ncode on +92-321-7895131"),
              ],
            ),
          ),
          PinCodeTextField(
            appContext: context,
            length: 4,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(10),
              activeColor: primaryColor,
              inactiveColor: bColor.withOpacity(0.2),
              fieldHeight: 55,
              fieldWidth: 55,
            ),
          ),
          Center(
              child: RoundButton(
            title: 'Continue',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ResetPasswordScreen()));
            },
          )),
          Center(
            child: RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: "Re-send code in", style: TextStyle(color: bColor)),
              TextSpan(text: "  0:20", style: TextStyle(color: primaryColor)),
            ])),
          )
        ],
      ),
    );
  }
}
