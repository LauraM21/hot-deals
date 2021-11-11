import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:getxfire/getxfire.dart';
import 'package:hotdealsgemet/core/app_rss/app_assets.dart';
import 'package:hotdealsgemet/core/app_rss/font_size.dart';
import 'package:hotdealsgemet/core/app_rss/font_weights.dart';
import 'package:hotdealsgemet/view_and_controllers/create_account/create_user_controller.dart';
import 'package:hotdealsgemet/view_and_controllers/forget_password/forget_password_controller.dart';
import 'package:hotdealsgemet/view_and_controllers/home_screen/home_screen_controller.dart';
import 'package:hotdealsgemet/view_and_controllers/login_screen/login_screen_controller.dart';
import 'package:hotdealsgemet/widget/custom_spacing.dart';
import 'package:hotdealsgemet/widget/textstyle_widget.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends GetView<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(builder: (builder) {
      return WillPopScope(
        onWillPop: ()async {
          return false;
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child:   Text(
              "This is Home screen",
              style: textStyleWidget(
                  letterSpacing: .2, color: Colors.black.withOpacity(.5),fontSize: FontSize.h3,fontWeight: FontWights.bold),
            ),
          )
        ),
      );
    });
  }
}
