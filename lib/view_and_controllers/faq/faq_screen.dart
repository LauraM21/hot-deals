import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:hotdealsgemet/core/app_rss/app_assets.dart';
import 'package:hotdealsgemet/view_and_controllers/faq/faq_controller.dart';
import 'package:hotdealsgemet/view_and_controllers/splash_screen/splash_screen_controller.dart';

class FAQ extends GetView<FAQController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FAQController>(

      builder: (controller) {

             return Scaffold(
          backgroundColor: Colors.white,
        );
      },

    );
  }
}
