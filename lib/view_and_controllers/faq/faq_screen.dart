import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:hotdealsgemet/core/app_rss/app_assets.dart';
import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';
import 'package:hotdealsgemet/view_and_controllers/faq/faq_controller.dart';
import 'package:hotdealsgemet/view_and_controllers/faq/faq_detail_screen.dart';
import 'package:hotdealsgemet/view_and_controllers/splash_screen/splash_screen_controller.dart';

class FAQ extends GetView<FAQController> {
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
              "FAQ",
              style: textStyleWidget(
                  fontWeight: FontWights.semiBold,
                  color: Colors.white,
                  fontSize: FontSize.h1),
            ),
          ),
          body: SingleChildScrollView(
            child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: controller.faq.length,
                itemBuilder: (_, index) {
                  return faqCardWidget(controller.faq[index]);
                }),
          ),
        );
      },
    );
  }

  Widget faqCardWidget(Map<String, String> map) {
    return InkWell(
      onTap: (){

        Get.to(FAQDetailsScreen(map));

      },
      child: Container(
        padding: EdgeInsets.only(left: 10,right: 10,bottom: 16),
        margin: EdgeInsets.only(left: 16,right: 16,top: 16),
        child: Row(
          children: [
            Expanded(
              child:
                  Text(map["q"]!, maxLines: 2, overflow: TextOverflow.ellipsis,style: textStyleWidget(fontSize: FontSize.normalText,fontWeight: FontWights.normal),),
            ),
            HorizontalSpacing(value: 15),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
            )
          ],
        ),
        decoration: BoxDecoration(


          border: Border(
            bottom: BorderSide(width: .5, color: Colors.black.withOpacity(.2),),
          ),
              ),
      ),
    );
  }
}
