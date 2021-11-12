import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfire/getxfire.dart';
import 'package:hotdealsgemet/core/api_calls/auth.dart';
import 'package:hotdealsgemet/view_and_controllers/home_screen/home_screen.dart';

class CreateUserController extends GetxController {

  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();

  FocusNode emailFocus=FocusNode();
  FocusNode passwordFocus=FocusNode();
  bool isLoading=false;


  createAccount()async {
    await buttonControl(true);
    UserCredential data= await Get.find<AuthenticationService>()
        .createUserAccount(email_controller.text, password_controller.text);

   if(data!= null)
     {
       Get.to(HomeScreen());

     }
    await buttonControl(false);

  //store token in locad db
    //create a user account in firebase
    // clear controllers
    //move to hpomepage

  }


  GoToHomepage()
  {
    Get.to(HomeScreen());

  }



  buttonControl(bool value)
  {
    isLoading =value;
    update();
  }

}
