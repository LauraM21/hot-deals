import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getxfire/getxfire.dart';
import 'package:hotdealsgemet/core/api_calls/auth.dart';

class LoginController extends GetxController
{


  TextEditingController email_controller=TextEditingController();
  TextEditingController password_controller=TextEditingController();

   late final  auth= Get.find<AuthenticationService>();
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
    await auth.login(email_controller.text, password_controller.text);

  }

  resetPassword()
  async{
    await auth.requestOtpMail("harikrishnarko007@gmail.com");

  }


}