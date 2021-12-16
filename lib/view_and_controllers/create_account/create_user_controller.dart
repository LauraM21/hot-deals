

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotdealsgemet/core/api_calls/auth.dart';
import 'package:hotdealsgemet/core/api_calls/firestore_gateway.dart';
import 'package:hotdealsgemet/core/app_rss/app_strings.dart';
import 'package:hotdealsgemet/core/services/local_database.dart';
import 'package:hotdealsgemet/view_and_controllers/home_screen/home_screen.dart';

class CreateUserController extends GetxController {

  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();

  FocusNode emailFocus=FocusNode();
  FocusNode passwordFocus=FocusNode();
  bool isLoading=false;

  late final  db= Get.find<LocalDatabase>();


  createAccount()async {
    await buttonControl(true);
    var userCredential= await Get.find<AuthenticationService>()
        .createUserAccount(email_controller.text, password_controller.text);

   if(userCredential!= null)
     {
       final instance=db.getStorageInstance;
       instance.write(AppStrings.token,userCredential.user!.uid);

       Map<String,dynamic>  userDate={
         AppStrings.userUniqId:userCredential!.user!.uid,
         AppStrings.dateTime:DateTime.now().toString(),
         AppStrings.userName:"",
         AppStrings.photoUrl:"",
         AppStrings.eMail:userCredential!.user!.email,
       };
       await Get.find<FireStoreGateway>().createUser(userDate);

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


  goBack()
  {
    Get.back();

  }

}
