import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotdealsgemet/core/api_calls/auth.dart';

class CreateUserController extends GetxController {
  TextEditingController userName = TextEditingController();

  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();

  createAccount()async {
    await Get.find<AuthenticationService>()
        .createUserAccount(email_controller.text, password_controller.text);
  }
}
