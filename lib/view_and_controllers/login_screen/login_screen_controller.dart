import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController
{


  TextEditingController email_controller=TextEditingController();
  TextEditingController password_controller=TextEditingController();

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
  {
    print(email_controller.text);
    print(password_controller.text);

  }


}