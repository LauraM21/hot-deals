import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hotdealsgemet/core/api_calls/auth.dart';

class ForgetPasswordController extends GetxController
{
  TextEditingController emailController =TextEditingController();
  FocusNode emailFocus=FocusNode();
  bool isLoading=false;


  passwordRequest()
  async{
    buttonControl(true);
    await Get.find<AuthenticationService>().requestOtpMail(emailController.text);
    Get.back();
    buttonControl(false);

  }
  buttonControl(bool value)
  {
    isLoading =value;
    update();
  }


}