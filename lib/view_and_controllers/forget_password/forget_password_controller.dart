import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hotdealsgemet/core/api_calls/auth.dart';

class ForgetPasswordController extends GetxController
{
  TextEditingController emailController =TextEditingController();


  passwordRequest()
  async{
    await Get.find<AuthenticationService>().requestOtpMail(emailController.text);

  }



}