import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:hotdealsgemet/core/app_rss/app_assets.dart';
import 'package:hotdealsgemet/core/app_rss/app_colors.dart';
import 'package:hotdealsgemet/core/app_rss/font_size.dart';
import 'package:hotdealsgemet/view_and_controllers/side_drawer/side_drawer.dart';

import 'package:hotdealsgemet/widget/custom_spacing.dart';
import 'package:hotdealsgemet/widget/textstyle_widget.dart';

import 'home_screen_controller.dart';

class HomeScreen extends GetView<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(builder: (builder) {
      return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.red,
          title: Row(
            children: [
              TextButton(
                  onPressed: () {

                  },
                  child: Icon(Icons.emoji_emotions, color: AppColors.white)),
              SizedBox(width: 10),

            ],
          ),
        ),
          endDrawer: SideDrawer(context),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Center(child: Text("WELCOME TO....",
                  style: TextStyle(
                      color: AppColors.primaryTextColor,
                      fontSize: FontSize.h2,
                      fontWeight: FontWeight.w700),),),
                Container(

// width: MediaQuery.of(context).size.width,
                    width: 500,
                    height: 200,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Image(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(AppAssets.applogo),
                    )),
                Center(
                  child: Text(
                    "The app where you don't have to \n cut out coupons in order to \n SAVE MONEY!.",
                    textAlign: TextAlign.center, style: TextStyle(

                      color: AppColors.primaryTextColor,
                      fontSize: FontSize.h1,
                      fontWeight: FontWeight.w400),),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                    child: Column(
                      children: [
                        VerticalSpacing(value: 15),
                        MaterialButton(
                            height: 40,
                            onPressed: () async {
// Navigator.of(context).push(
//   MaterialPageRoute(
//     builder: (BuildContext context) =>
//         HomeScreen(),
//   ),
// );

                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.money_off_csred_rounded,
                                    color: AppColors.white),
                                Text(
                                  "FIND DEALS",
                                  style: textStyleWidget(color: AppColors.white),
                                ),
                              ],
                            ),
                            materialTapTargetSize: MaterialTapTargetSize
                                .padded,
                            animationDuration: Duration(seconds: 1),
                            minWidth: double.infinity,
                            color: AppColors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
// elevation: 2,
//   focusElevation:2,
                            visualDensity: VisualDensity
                                .adaptivePlatformDensity),
                        VerticalSpacing(value: 15),
                        MaterialButton(
                            height: 40,
                            onPressed: () async {
// Navigator.of(context).push(
//   MaterialPageRoute(
//     builder: (BuildContext context) =>
//         HomeScreen(),
//   ),
// );

                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.search_outlined,
                                    color: AppColors.white),
                                Text(
                                  "SEARCH",
                                  style: textStyleWidget(color: AppColors.white),
                                ),
                              ],
                            ),
                            materialTapTargetSize: MaterialTapTargetSize
                                .padded,
                            animationDuration: Duration(seconds: 1),
                            minWidth: double.infinity,
                            color: AppColors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
// elevation: 2,
//   focusElevation:2,
                            visualDensity: VisualDensity
                                .adaptivePlatformDensity),
                        VerticalSpacing(value: 15),
                        MaterialButton(
                            height: 40,
                            onPressed: () async {


                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.check, color: AppColors.white),
                                Text(
                                  "FAQ",
                                  style: textStyleWidget(color: AppColors.white),
                                ),
                              ],
                            ),
                            materialTapTargetSize: MaterialTapTargetSize
                                .padded,
                            animationDuration: Duration(seconds: 1),
                            minWidth: double.infinity,
                            color: AppColors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
// elevation: 2,
//   focusElevation:2,
                            visualDensity: VisualDensity
                                .adaptivePlatformDensity),
                        VerticalSpacing(value: 15),
                        MaterialButton(
                            height: 40,
                            onPressed: () async {
// Navigator.of(context).push(
//   MaterialPageRoute(
//     builder: (BuildContext context) =>
//         HomeScreen(),
//   ),
// );

                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.mode_edit, color: AppColors.white),
                                Text(
                                  "SIGN UP",
                                  style: textStyleWidget(color: AppColors.white),
                                ),
                              ],
                            ),
                            materialTapTargetSize: MaterialTapTargetSize
                                .padded,
                            animationDuration: Duration(seconds: 1),
                            minWidth: double.infinity,
                            color: AppColors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
// elevation: 2,
//   focusElevation:2,
                            visualDensity: VisualDensity
                                .adaptivePlatformDensity),
                        VerticalSpacing(value: 15),
                        MaterialButton(
                            height: 40,
                            onPressed: () async {
// Navigator.of(context).push(
//   MaterialPageRoute(
//     builder: (BuildContext context) =>
//         HomeScreen(),
//   ),
// );

                            },

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.people, color: AppColors.white),
                                Text(
                                  "BUSINESS OWNERS",
                                  style: textStyleWidget(color: AppColors.white),
                                ),
                              ],
                            ),
                            materialTapTargetSize: MaterialTapTargetSize
                                .padded,
                            animationDuration: Duration(seconds: 1),
                            minWidth: double.infinity,
                            color: AppColors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),

                            visualDensity: VisualDensity
                                .adaptivePlatformDensity),
                        VerticalSpacing(value: 15),
                        Icon(Icons.phone, color: AppColors.primaryTextColor,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),


      );
    });
  }
}
