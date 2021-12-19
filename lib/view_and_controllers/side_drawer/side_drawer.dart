// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, file_names;, file_names
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:hotdealsgemet/core/app_rss/app_assets.dart';
import 'package:hotdealsgemet/core/app_rss/app_colors.dart';
import 'package:hotdealsgemet/core/app_rss/font_size.dart';
import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';
import 'package:hotdealsgemet/core/services/local_database.dart';

import 'package:hotdealsgemet/view_and_controllers/contact_us/contact_us_screen.dart';
import 'package:hotdealsgemet/view_and_controllers/faq/faq_screen.dart';
import 'package:hotdealsgemet/view_and_controllers/fav_deals/fav_deals_screen.dart';
import 'package:hotdealsgemet/view_and_controllers/login_screen/login_screen.dart';
import 'package:hotdealsgemet/view_and_controllers/settings/settings.dart';
import 'package:hotdealsgemet/view_and_controllers/settings/settings_screen_controller.dart';
import 'package:hotdealsgemet/view_and_controllers/tc_pp/about_us_screen.dart';

import 'package:hotdealsgemet/widget/custom_spacing.dart';

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
                    VerticalSpacing(value: 20),
                    Container(

                      alignment: Alignment.center,
                      child: Get.find<LocalDatabase>().getToken == null ||
                              Get.find<LocalDatabase>().getToken == ""
                          ? Container(


                          alignment: Alignment.center,
                            height: 150,
                            child: MaterialButton(
                                onPressed: () {
                                  // login funtion
                                },
                                color: Colors.red,
                                child: Text(
                                  "Login",
                                  style: textStyleWidget(color: Colors.white),
                                )),
                          )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                VerticalSpacing(value: 10),
                                Get.find<SettingsController>()
                                    .json["photoUrl"]== "" ? Container():    CircleAvatar(

                                  backgroundImage:  NetworkImage(
                                        Get.find<SettingsController>()
                                            .json["photoUrl"]),
                                  radius: 40,
                                  ),

                                VerticalSpacing(value: 10),
                                Text(Get.find<SettingsController>()
                                    .json["userName"]),
                                VerticalSpacing(),
                                Text(Get.find<SettingsController>()
                                    .json["eMail"],style: textStyleWidget(color: Colors.black.withOpacity(.5)),),
                                VerticalSpacing(value: 10),
                              ],
                            ),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.black.withOpacity(.2))),
                    ),
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(
                                image: AssetImage(AppAssets.home_icon),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text(
                              "Home",
                              style: textStyleWidget(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    Get.find<LocalDatabase>().getToken == null ||
                            Get.find<LocalDatabase>().getToken == ""
                        ? Container()
                        : InkWell(
                            onTap: () {
                              Get.back();
                              Get.to(Settings());
                            },
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black12)),
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 20,
                                    padding: EdgeInsets.only(left: 10),
                                    child: Image(
                                      image: AssetImage(
                                        AppAssets.user_profile_icon,
                                      ),
                                      fit: BoxFit.cover,
                                      color: Colors.black,
                                    ),
                                  ),
                                  HorizontalSpacing(value: 10),
                                  Text(
                                    "Profile",
                                    style: textStyleWidget(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                    VerticalSpacing(value: 15),
                    Get.find<LocalDatabase>().getToken == null ||
                        Get.find<LocalDatabase>().getToken == ""? Container() :     InkWell(
                      onTap: () {

                        Get.to(FavDeals());
                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(
                                image: AssetImage(
                                  AppAssets.fav,
                                ),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text(
                              "Saved Deals",
                              style: textStyleWidget(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {

                        Get.to(BusinessOwners());

                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(
                                image: AssetImage(
                                  AppAssets.advertice_with_us,
                                ),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text(
                              "Advertise with us",
                              style: textStyleWidget(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                 /*   VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(
                                image: AssetImage(
                                  AppAssets.powerOff,
                                ),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text(
                              "Biz Dictonary",
                              style: textStyleWidget(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),*/
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {

                        Get.to(FAQ());

                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(
                                image: AssetImage(
                                  AppAssets.faq,
                                ),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text(
                              "FAQ",
                              style: textStyleWidget(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {
                        Get.to(PPAndTC(type: "PP",));

                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(
                                image: AssetImage(
                                  AppAssets.privacy_policy,
                                ),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text(
                              "Privacy Policy",
                              style: textStyleWidget(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {
                        Get.to(PPAndTC(type: "TC",));

                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(
                                image: AssetImage(
                                  AppAssets.terms_conditions,
                                ),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text(
                              "Terms & Conditions",
                              style: textStyleWidget(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {

                        Get.to(ContactUs());

                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.only(left: 10),
                              child: Image(
                                image: AssetImage(
                                  AppAssets.contact_us,
                                ),
                                fit: BoxFit.cover,
                                color: Colors.black,
                              ),
                            ),
                            HorizontalSpacing(value: 10),
                            Text(
                              "Contact us",
                              style: textStyleWidget(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    Get.find<LocalDatabase>().getToken == null ||
                            Get.find<LocalDatabase>().getToken == ""
                        ? Container()
                        : InkWell(
                            onTap: () {
                              print("logout button is called");
                              Get.find<LocalDatabase>().clearDB();
                              Get.find<LoginController>().buttonControl(false);
                              Get.offAll(LoginScreen());
                            },
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 20,
                                    padding: EdgeInsets.only(left: 10),
                                    child: Image(
                                      image: AssetImage(
                                        AppAssets.powerOff,
                                      ),
                                      fit: BoxFit.cover,
                                      color: Colors.white,
                                    ),
                                  ),
                                  HorizontalSpacing(value: 10),
                                  Text(
                                    "Logout",
                                    style: textStyleWidget(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                  ],
                ),
              )),
        ),
      ),
    ),
  );
}
