import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Appconstant/imagefile.dart';
import '../Widget/custom_button.dart';
import '../Widget/image.dart';
import '../Widget/text_field.dart';
import '../Widget/text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userPasswordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.clrBlack,
      body: ListView(
        children: [
          SizedBox(
            height: 10.h,
          ),
          imageWidget(ImageAssest.logo),
          SizedBox(
            height: 5.h,
          ),
          textFieldWidget('UserName', usernameController),
          textFieldWidget('UserPassword', userPasswordController),
          SizedBox(
            height: 4.h,
          ),
          customButton(() {}, 'Sign In', Colors.deepOrange),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: Row(
                  children: [
                    textWidget('Not a registered member?', AppColor.clrWhite),
                    textWidget('Sign UP', AppColor.clrOrange)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
