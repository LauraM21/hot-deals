import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:hotdealsgemet/core/api_calls/auth.dart';
import 'package:hotdealsgemet/core/app_rss/app_strings.dart';
import 'package:hotdealsgemet/core/services/local_database.dart';
import 'package:hotdealsgemet/view_and_controllers/create_account/create_user_screen.dart';
import 'package:hotdealsgemet/view_and_controllers/forget_password/forget_password_screen.dart';
import 'package:hotdealsgemet/view_and_controllers/home_screen/home_screen.dart';
import 'package:hotdealsgemet/view_and_controllers/settings/settings_screen_controller.dart';

class LoginController extends GetxController
{

  TextEditingController email_controller=TextEditingController();
  TextEditingController password_controller=TextEditingController();

  FocusNode emailFocus=FocusNode();
  FocusNode passwordFocus=FocusNode();

  bool isLoading=false;
  bool readOnly=false;


  late final  auth= Get.find<AuthenticationService>();
  late final  db= Get.find<LocalDatabase>();

  @override
  void onInit() {


  }

  @override
  void onClose() {

  }

  @override
  void onReady() {

  }


  loginValidations()
 async {
    print("loginValidations called");
  await buttonControl(true);
    // UserCredential? date=   await auth.login(email_controller.text, password_controller.text);
  var date=  await auth.login(email_controller.text, password_controller.text);
    await buttonControl(false);
    print("loginValidations 1");

  if(date !=null )

      {
        print("heloow world");
        final instance=db.getStorageInstance;
        instance.write(AppStrings.token,date.user!.uid);

      await Get.find<SettingsController>().getUserProfile();

        Get.to(HomeScreen());
      }

    // save the token
    // redirect to home page
    // clear the controllers

  }




  gotToForgetPasswordScreen()
  async{
  await buttonControl(true);
    Get.to(ForgetPassword())!.then((value) => buttonControl(false));


  }


  gotToCreateAccountScreen()
  async{
    await buttonControl(true);
    Get.to(CreateUser())!.then((value) => buttonControl(false));


  }


  gotToHomeScreenScreen()
  async{
    await buttonControl(true);
    Get.to(HomeScreen())!.then((value) => buttonControl(false));


  }


   buttonControl(bool value)
   {
     readOnly=value;

     isLoading =value;
     update();
   }



}