import 'package:flutter/cupertino.dart';
import 'package:getxfire/getxfire.dart';
import 'package:hotdealsgemet/core/app_rss/app_strings.dart';
import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';
import 'package:hotdealsgemet/view_and_controllers/all_deals/all_deals_controller.dart';

class AllDeals extends GetView<AllDealsController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AllDealsController>(builder: (builder) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: CupertinoColors.systemRed,
          title: Text(
            "All Deals",
            style: textStyleWidget(
                color: Colors.white,
                fontSize: FontSize.h1,
                fontWeight: FontWights.normal),
          ),
        ),
        body: SingleChildScrollView(
          child: FutureBuilder(
            future:  GetxFire.firestore.getData(collection: AppStrings.deals,),
            builder: (BuildContext context,snapshot) {

              if(snapshot.hasData)
                {
                  print(snapshot.data);
                  return Text("has data");
                }
              return Center(child: Text("No data"),);

            },
          ),
        ),
      );
    });
  }
}
