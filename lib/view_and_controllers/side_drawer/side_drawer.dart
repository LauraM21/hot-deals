// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, file_names;, file_names
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:hotdealsgemet/core/app_rss/app_assets.dart';
import 'package:hotdealsgemet/core/app_rss/app_colors.dart';
import 'package:hotdealsgemet/core/app_rss/font_size.dart';
import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';
import 'package:hotdealsgemet/core/services/local_database.dart';
import 'package:hotdealsgemet/view_and_controllers/login_screen/login_screen.dart';
import 'package:hotdealsgemet/view_and_controllers/profile/profile.dart';

import 'package:hotdealsgemet/widget/custom_spacing.dart';


// Navigator.of(context).push(
// MaterialPageRoute(
// builder: (BuildContext context) => Profile()),
// );

ClipRRect SideDrawer(BuildContext context) {
  return ClipRRect(
    child: Theme(
      data: Theme.of(context).copyWith(
        canvasColor: AppColors.white,
      ),
      child: Drawer(
        child: SafeArea(
          child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        height: 150,
                        alignment: Alignment.center,
                        child: Get
                            .find<LocalDatabase>()
                            .getToken == null || Get
                            .find<LocalDatabase>()
                            .getToken == "" ? Text("Login") : Text(
                            "Already login"),
                    ),
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {
                        print("logout button is called");


                        Get.offAll(LoginScreen());
                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(

                                image: AssetImage(AppAssets.powerOff,),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text("Profile", style: textStyleWidget(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.black),)
                          ],
                        ),
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {

                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(

                                image: AssetImage(AppAssets.powerOff,),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text("Home", style: textStyleWidget(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.black),)
                          ],
                        ),
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {

                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(

                                image: AssetImage(AppAssets.powerOff,),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text("Saved Deals", style: textStyleWidget(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.black),)
                          ],
                        ),
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {

                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(

                                image: AssetImage(AppAssets.powerOff,),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text("Advertise with us", style: textStyleWidget(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.black),)
                          ],
                        ),
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {

                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(

                                image: AssetImage(AppAssets.powerOff,),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text("Biz Dictonary", style: textStyleWidget(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.black),)
                          ],
                        ),
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {

                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(

                                image: AssetImage(AppAssets.powerOff,),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text("FAQ", style: textStyleWidget(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.black),)
                          ],
                        ),
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {

                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(

                                image: AssetImage(AppAssets.powerOff,),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text("About us", style: textStyleWidget(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.black),)
                          ],
                        ),
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {

                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(

                                image: AssetImage(AppAssets.powerOff,),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text("Contact us", style: textStyleWidget(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.black),)
                          ],
                        ),
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {
                        print("logout button is called");
                        Get.find<LocalDatabase>().clearDB();

                        Get.offAll(LoginScreen());
                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(

                                image: AssetImage(AppAssets.powerOff,),
                                fit: BoxFit.cover,
                                color: Colors.white,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text("Logout", style: textStyleWidget(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.white),)
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              )
          ),
        ),
      ),
    ),
  );
}
