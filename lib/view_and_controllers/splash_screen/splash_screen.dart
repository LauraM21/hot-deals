import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:hotdealsgemet/core/app_rss/app_assets.dart';
import 'package:hotdealsgemet/view_and_controllers/home_screen/home_screen.dart';
import 'package:hotdealsgemet/view_and_controllers/login_screen/login_screen.dart';
import 'package:hotdealsgemet/view_and_controllers/splash_screen/splash_screen_controller.dart';

class SplashScreenn extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(

      builder: (controller) {

      return AnimatedSplashScreen(
       splash: AppAssets.applogo,
       nextScreen: controller.isLoginUser ? HomeScreen()    :LoginScreen(),
        splashIconSize:200,
       animationDuration: Duration(seconds: 1),
       splashTransition: SplashTransition.fadeTransition,
     );

        /*     return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Container(
                padding: EdgeInsets.all(20),
                child: Image(
                  image: AssetImage(AppAssets.applogo),
                )
            ),
          ),
        );*/
      },

    );
  }
}
