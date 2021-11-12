import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotdealsgemet/core/api_calls/auth.dart';
import 'package:hotdealsgemet/core/app_rss/app_strings.dart';
import 'package:hotdealsgemet/widget/custom_spacing.dart';
import 'package:hotdealsgemet/widget/textstyle_widget.dart';

class ForgetPasswordController extends GetxController
{
  TextEditingController emailController =TextEditingController();
  FocusNode emailFocus=FocusNode();
  bool isLoading=false;


  passwordRequest()
  async{
    buttonControl(true);
  String value=  await Get.find<AuthenticationService>().requestOtpMail(emailController.text);
  if(value==AppStrings.success)
    {
      print(value);
    }
    if(value==AppStrings.failure)
    {
      print(value);

       Get.dialog(failureDialogBox());
    }

    //Get.back();

    buttonControl(false);

  }
  buttonControl(bool value)
  {
    print("----");
    isLoading =value;
    update();
  }


  failureDialogBox()
  {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      width: 100,
      height: 100,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 75,
            height: 75,
            color: Colors.red,

          ),
          VerticalSpacing(),
          Text("Entered email not found",style: textStyleWidget(),)
        ],
      ),
    );
  }


}