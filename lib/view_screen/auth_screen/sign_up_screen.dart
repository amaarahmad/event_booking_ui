import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/component/button_component.dart';
import 'package:event_booking_app/component/simple_text.dart';
import 'package:event_booking_app/component/social_media_button.dart';
import 'package:event_booking_app/component/text_field_component.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:event_booking_app/view_screen/auth_screen/sign_in_screen.dart';
import 'package:flutter/material.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isOn=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(

              children: [
                const SizedBox(
                  height: 40,
                ),
                SimpleText(title: 'Sign up'),
                const SizedBox(
                  height: 20,
                ),
                TextFieldComponent(hintText: 'Full name', prefixIcon: Icons.person_outline_outlined),
                const SizedBox(
                  height: 20,
                ),

                TextFieldComponent(hintText: 'abc@gmail.com', prefixIcon: Icons.email_outlined),
                const SizedBox(
                  height: 20,
                ),
                TextFieldComponent(hintText: 'Your Password', prefixIcon: Icons.lock_outline_rounded,suffixIcon: Icons.visibility_outlined,),

                const SizedBox(
                  height: 20,
                ),
                TextFieldComponent(hintText: 'Confirm Password', prefixIcon: Icons.lock_outline_rounded,suffixIcon: Icons.visibility_outlined,),

                const SizedBox(
                  height: 20,
                ),
                RoundButton(title: 'SIGN UP',),
                const SizedBox(
                  height: 20,
                ),

                Text('OR',style: TextStyle(color: bColor.withOpacity(0.5)),),
                SocialMediaButton(title: 'Login with Google',imgUrl: AppAssets.google,),
                SocialMediaButton(title: 'Login with Facebook',imgUrl: AppAssets.fb,),
                const SizedBox(
                  height: 20,
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                  },
                  child: RichText(text:  const TextSpan(children: [
                    TextSpan(
                        text: "Already have an account?",style: TextStyle(color: bColor)
                    ),
                    TextSpan(
                        text: "  Sign in",style: TextStyle(color: primaryColor)
                    ),
                  ])),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
