import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:getxfire/getxfire.dart';
import 'package:hotdealsgemet/core/app_rss/app_assets.dart';
import 'package:hotdealsgemet/core/app_rss/font_size.dart';
import 'package:hotdealsgemet/core/app_rss/font_weights.dart';
import 'package:hotdealsgemet/view_and_controllers/create_account/create_user_controller.dart';
import 'package:hotdealsgemet/view_and_controllers/login_screen/login_screen_controller.dart';
import 'package:hotdealsgemet/widget/custom_spacing.dart';
import 'package:hotdealsgemet/widget/textstyle_widget.dart';

class CreateUser extends GetView<CreateUserController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateUserController>(builder: (builder) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              VerticalSpacing(value: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(Icons.arrow_back)),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(AppAssets.applogo))),
                  ),
                ],
              ),
              VerticalSpacing(value: 15),
              Text(
                "e-mail",
                style: textStyleWidget(letterSpacing: .2),
              ),
              VerticalSpacing(),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(233, 230, 230, 100),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  controller: controller.email_controller,
                  focusNode: controller.emailFocus,
                  style: textStyleWidget(
                      fontSize: FontSize.normalText,
                      fontWeight: FontWights.normal,
                      color: Colors.black.withOpacity(.5),
                      letterSpacing: 1.2),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 5, left: 5),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(233, 230, 230, 100), width: .4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(233, 230, 230, 100), width: .4),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.red, width: .4),
                    ),
                  ),
                  onSubmitted: (value) {
                    if (controller.email_controller.text.trim().isEmpty) {
                      return;
                    } else if (!controller.email_controller.text.isEmail) {}
                  },
                  cursorColor: Colors.black45,
                ),
              ),
              VerticalSpacing(value: 15),
              Text(
                "password",
                style: textStyleWidget(letterSpacing: .2),
              ),
              VerticalSpacing(),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(233, 230, 230, 100),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  controller: controller.password_controller,
                  focusNode: controller.emailFocus,
                  style: textStyleWidget(
                      fontSize: FontSize.normalText,
                      fontWeight: FontWights.normal,
                      color: Colors.black.withOpacity(.5),
                      letterSpacing: 1.2),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 5, left: 5),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(233, 230, 230, 100), width: .4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(233, 230, 230, 100), width: .4),
                    ),
                  ),
                  onSubmitted: (value) {
                    if (controller.password_controller.text.trim().isEmpty) {
                      return;
                    }
                  },
                  cursorColor: Colors.black45,
                ),
              ),
              VerticalSpacing(value: 25),
              MaterialButton(
                  height: 40,
                  onPressed: controller.isLoading
                      ? () {}
                      : () async {
                          if (controller.isLoading) {
                            return;
                          }
                          if (controller.email_controller.text.trim().isEmpty) {
                            return;
                          } else if (!controller
                              .email_controller.text.isEmail) {
                            return;
                          }
                          if (controller.password_controller.text
                              .trim()
                              .isEmpty) {
                            return;
                          }
                          controller.createAccount();
                          // if (controller.email_controller.text.trim().isEmpty) {
                          //   return;
                          // } else if (!controller.email_controller.text.isEmail) {
                          //   return;
                          // }
                          //
                          // if (controller.password_controller.text.trim().isEmpty) {
                          //   return;
                          // }
                        },
                  child: Text(
                    "Create a account",
                    style: textStyleWidget(color: Colors.white),
                  ),
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  animationDuration: Duration(seconds: 1),
                  minWidth: double.infinity,
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  // elevation: 2,
                  //   focusElevation:2,
                  visualDensity: VisualDensity.adaptivePlatformDensity),
              VerticalSpacing(value: 25),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                //padding: EdgeInsets.only(right: 16),
                child: Text(
                  "or",
                  style: textStyleWidget(
                      fontSize: FontSize.subText_01,
                      letterSpacing: 1.2,
                      color: Colors.black.withOpacity(.5)),
                ),
              ),
              VerticalSpacing(value: 15),
              InkWell(
                onTap: (){
                  controller.GoToHomepage();
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  //padding: EdgeInsets.only(right: 16),
                  child: Text(
                    "Skip",
                    style: textStyleWidget(
                        fontSize: FontSize.normalText,
                        letterSpacing: 1.2,
                        color: Colors.black.withOpacity(.8)),
                  ),
                ),
              ),
            ],
          ),
        )),
      );
    });
  }
}
