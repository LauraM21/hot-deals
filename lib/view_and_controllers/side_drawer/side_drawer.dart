// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, file_names;, file_names
import 'package:flutter/material.dart';
import 'package:hotdealsgemet/core/app_rss/app_colors.dart';
import 'package:hotdealsgemet/core/app_rss/font_size.dart';
import 'package:hotdealsgemet/view_and_controllers/profile/profile.dart';

import 'package:hotdealsgemet/widget/custom_spacing.dart';

ClipRRect SideDrawer(BuildContext context) {
  return ClipRRect(
    child: Theme(
      data: Theme.of(context).copyWith(
        canvasColor: AppColors.white,
      ),
      child: Drawer(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: ListView(
            children: [
              ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.account_circle,
                        color:AppColors.primaryTextColor,
                        size: 25,

                      ),
                      HorizontalSpacing(value: 15),
                      Text(
                        'Profile',
                        style: TextStyle(
                          color:AppColors.primaryTextColor,
                          fontSize: FontSize.h2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color:AppColors.primaryTextColor,
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) => Profile()),
                    );
                  }),
              Divider(
                thickness: 3,
              ),
              ListTile(
                  title: Text(
                    'Visit',
                    style: TextStyle(
                      color:AppColors.primaryTextColor,
                    ),
                  ),

                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primaryTextColor,
                  ),
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //       builder: (BuildContext context) => AppBars()),
                    // );
                  }),
              Divider(
                thickness: 3,
              ),
              ListTile(
                  title: Text(
                    'Exhibit',
                    style: TextStyle(
                      color:AppColors.primaryTextColor,
                    ),
                  ),

                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primaryTextColor,
                  ),
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //       builder: (BuildContext context) => AppBars()),
                    // );
                  }),
              Divider(
                thickness: 3,
              ),
              ListTile(
                  title: Text(
                    'Facilities',
                    style: TextStyle(
                      color:AppColors.primaryTextColor,
                    ),
                  ),

                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primaryTextColor,
                  ),
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //       builder: (BuildContext context) => AppBars()),
                    // );
                  }),
              Divider(
                thickness: 3,
              ),
              ListTile(
                  title: Text(
                    'Services',
                    style: TextStyle(
                      color: AppColors.primaryTextColor,
                    ),
                  ),

                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primaryTextColor,
                  ),
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //       builder: (BuildContext context) => AppBars()),
                    // );
                  }),
              Divider(
                thickness: 3,
              ),
              ListTile(
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      color: AppColors.primaryTextColor,
                    ),
                  ),

                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color:AppColors.primaryTextColor,
                  ),
                  onTap: () {}),
              Divider(
                thickness: 3,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Text("Contact Us"),
                  TextButton(
                      child: Text(
                        "Contact Us",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //       builder: (BuildContext context) => ContactUs()),
                        // );
                      }),
                  SizedBox(height: 10),
                  TextButton(
                      child: Text(
                        "FeedBack",
                        style: TextStyle(
                          color: AppColors.primaryTextColor,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //       builder: (BuildContext context) => Feed()),
                        // );
                      }),

                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
