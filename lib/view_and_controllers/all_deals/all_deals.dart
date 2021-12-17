import 'package:flutter/cupertino.dart';
import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';
import 'package:hotdealsgemet/view_and_controllers/all_deals/all_deals_controller.dart';
import 'package:hotdealsgemet/widget/deal_widget.dart';

class AllDeals extends GetView<AllDealsController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AllDealsController>(
        builder: (builder) {

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
            body: controller.isLoading
                ? Center(
                    child: SizedBox(
                      width: 25,
                      height: 25,
                      child: CircularProgressIndicator(),
                    ),
                  )
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView.builder(
                          primary: false,
                            shrinkWrap: true,
                            itemCount: controller.listOfDeals.length,
                            itemBuilder: (_, index) {

                              return InkWell(
                                  onTap: (){
                                    controller.addToFavDeal(controller.listOfDeals[index].id);
                                  },
                                  child: DealWidget(controller.listOfDeals[index]));

                            })
                      ],
                    ),
                  ),
          );
        });
  }


}
