import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:hotdealsgemet/core/app_rss/app_strings.dart';
import 'package:hotdealsgemet/core/app_rss/font_size.dart';
import 'package:hotdealsgemet/core/app_rss/font_weights.dart';
//import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';
import 'package:hotdealsgemet/core/services/local_database.dart';
import 'package:hotdealsgemet/widget/custom_spacing.dart';
import 'package:hotdealsgemet/widget/textstyle_widget.dart';

class DealWidget extends StatefulWidget {
  late DocumentSnapshot data;

  @override
  _DealWidgetState createState() => _DealWidgetState();

  DealWidget(this.data);
}

class _DealWidgetState extends State<DealWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black.withOpacity(.2))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(widget.data["imageLink"]),
              ),
            ),
          ),
          VerticalSpacing(value: 15),
          Text(
            widget.data["description"],
            style: textStyleWidget(
                color: Colors.red,
                fontSize: FontSize.h2,
                fontWeight: FontWights.semiBold),
          ),
          VerticalSpacing(value: 7),
          Text(
            widget.data["subDescription"],
            style: textStyleWidget(
                color: Colors.black.withOpacity(.8),
                fontSize: FontSize.h1,
                fontWeight: FontWights.semiBold),
          ),
          VerticalSpacing(value: 7),
          Text(
            widget.data["shopName"],
            style: textStyleWidget(
                color: Colors.black.withOpacity(.8),
                fontSize: FontSize.normalText,
                fontWeight: FontWights.semiBold),
          ),
          VerticalSpacing(value: 7),
          Text(
            widget.data["shopAddress"],
            style: textStyleWidget(
                color: Colors.black.withOpacity(.8),
                fontSize: FontSize.normalText,
                fontWeight: FontWights.semiBold),
          ),
          VerticalSpacing(value: 7),
          Text(
            widget.data["shopPhoneNumber"],
            style: textStyleWidget(
                color: Colors.black.withOpacity(.8),
                fontSize: FontSize.normalText,
                fontWeight: FontWights.semiBold),
          ),
          VerticalSpacing(value: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.data["shopCode"],
                style: textStyleWidget(
                    color: Colors.blueAccent.withOpacity(.8),
                    fontSize: FontSize.h3,
                    fontWeight: FontWights.semiBold),
              ),
            /*  StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('Fav')
                    .doc(Get.find<LocalDatabase>()
                        .getStorageInstance
                        .read(AppStrings.token))
                    .collection("Favs")
                    .snapshots(),
                builder: (_, snapshot) {
                  if(snapshot.hasData)
                    {
                      var docs = snapshot.data!.docs;

                    }
                  return Text("data");
                },
              )*/
            ],
          )
        ],
      ),
    );
  }
}
