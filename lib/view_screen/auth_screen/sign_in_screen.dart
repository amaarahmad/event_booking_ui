import 'package:event_booking_app/app_assets.dart';
import 'package:event_booking_app/component/button_component.dart';
import 'package:event_booking_app/component/simple_text.dart';
import 'package:event_booking_app/component/social_media_button.dart';
import 'package:event_booking_app/component/text_field_component.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:event_booking_app/utils/routes/routes.dart';
import 'package:event_booking_app/utils/routes/routes_names.dart';
import 'package:event_booking_app/view_screen/auth_screen/forget_screen.dart';
import 'package:event_booking_app/view_screen/auth_screen/sign_up_screen.dart';
import 'package:event_booking_app/view_screen/home_screen.dart';
import 'package:flutter/material.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isOn=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Center(child: Image.asset(AppAssets.signIn)),
              const SizedBox(
                height: 20,
              ),
              SimpleText(title: 'Sign in'),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Row(
                children: [
                  Switch(

                      value: isOn, onChanged: (value){

                    isOn=value;
                    setState(() {

                    });
                  }),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('Remember Me'),
                ],
              ),
                  InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, RoutesName.resetPassword);
                      },
                      child: const Text('Forget Password?')),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              RoundButton(onPressed: (){
                Navigator.pushNamed(context, RoutesName.home);


              },title: 'SIGN IN',),
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
                  Navigator.pushNamed(context, RoutesName.signUp);

                },
                child: RichText(text:  const TextSpan(children: [
                  TextSpan(
                    text: "Don't have an account?",style: TextStyle(color: bColor)
                  ),
                    TextSpan(
                        text: "  Sign up",style: TextStyle(color: primaryColor)
                    ),
                ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
