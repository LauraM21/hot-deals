import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:hotdealsgemet/core/app_rss/app_assets.dart';
import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';
import 'package:hotdealsgemet/view_and_controllers/faq/faq_controller.dart';
import 'package:hotdealsgemet/view_and_controllers/splash_screen/splash_screen_controller.dart';

class FAQDetailsScreen extends GetView<FAQController> {
  Map<String,String> map;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FAQController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColors.red,
            centerTitle: false,
            title: Text(
              "FAQ Details ",
              style: textStyleWidget(
                  fontWeight: FontWights.semiBold,
                  color: Colors.white,
                  fontSize: FontSize.h1),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerticalSpacing(value: 10),

                  Text(map["q"]!,style: textStyleWidget(fontSize: FontSize.normalText,letterSpacing: .6,fontWeight: FontWights.semiBold),),
                  VerticalSpacing(value: 10),
                  Text(map["a"]!,style: textStyleWidget(fontSize: FontSize.smallText,letterSpacing: .6,fontWeight: FontWights.normal),),

                ],
              ),
            )
          ),
        );
      },
    );
  }

  FAQDetailsScreen(this.map);
}
