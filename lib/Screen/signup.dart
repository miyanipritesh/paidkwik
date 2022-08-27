import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:paidwik/Appconstant/imagefile.dart';
import 'package:paidwik/routes/app_routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Widget/image.dart';
import '../Widget/text.dart';
import '../Widget/text_field.dart';
import '../model.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isCheck = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();
  TextEditingController referCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          SizedBox(
            height: 10.h,
          ),
          imageWidget(ImageAssest.logo),
          SizedBox(
            height: 5.h,
          ),
          textFieldWidget('Name', nameController),
          textFieldWidget('Email Address', emailController),
          textFieldWidget('Mobile', mobileController),
          textFieldWidget('Password', passwordController),
          textFieldWidget('Comform Password', cPasswordController),
          textFieldWidget('Refer Code', referCodeController),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Checkbox(
                      value: isCheck,
                      checkColor: AppColor.clrBlack,
                      focusColor: AppColor.clrWhite,
                      fillColor: MaterialStateProperty.all(AppColor.clrWhite),
                      side: BorderSide(color: AppColor.clrWhite),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: AppColor.clrWhite)),
                      onChanged: (value) {
                        isCheck = value!;
                        setState(() {});
                      }),
                  textWidget(
                      'i agree with tearm and condition', AppColor.clrWhite)
                ],
              )
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          SizedBox(
            height: 50,
            width: 30.h,
            child: ElevatedButton(
                onPressed: () {
                  // save(
                  //     cPasswordController.text,
                  //     passwordController.text,
                  //     emailController.text,
                  //     nameController.text,
                  //     mobileController.value);
                  googleSignIn();
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepOrange)),
                child: const Text(
                  'Restitor',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),
        ],
      ),
    );
  }

  save(String cpassword, String password, String email, String name,
      TextEditingValue value) async {
    try {
      var response =
          await http.post(Uri.parse('https://paidkwik.com/api/login'), body: {
        // "name": 'pritesh',
        // "mobile": '7046833845',
        // "email": "test@gmail.com",
        // "password": "123456",
        // "device_type": Device.deviceType.name
        "user_name": "test@gmail.com",
        "device_type": Device.deviceType.name,
        "fcm_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9",
        "password": "123456"
      });
      var responseData = json.decode(response.body);
      var d = Data.fromJson(responseData);
      if (response.statusCode == 200) {
        Get.toNamed(AppRoutes.loging);
      }
      registerToast("${d.message}");
    } catch (e) {
      registerToast(e.toString());
      debugPrint(e.toString());
    }
  }

  Future googleSignIn() async {
    GoogleSignInAccount _userObj;
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      try {
        var response = await http.post(
            Uri.parse('https://paidkwik.com/api/login_with_google'),
            body: {
              "mobile": '7046833555',
              "google_id": googleUser.id,
              "email": googleUser.email,
              "name": googleUser.displayName,
              "profile_pic": googleUser.photoUrl,
            });
        var responseData = json.decode(response.body);

        debugPrint('-----------$responseData');

        var d = Data.fromJson(responseData);
        if (response.statusCode == 200) {
          Get.toNamed(AppRoutes.loging);
        }
        registerToast("${d.message}");
      } catch (e) {
        registerToast(e.toString());
        debugPrint(e.toString());
      }
    }
  }

  registerToast(String toast) {
    return Fluttertoast.showToast(
        msg: toast,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor:
            toast == "Register sucessfull" ? Colors.green : Colors.red,
        textColor: Colors.white);
  }
}
