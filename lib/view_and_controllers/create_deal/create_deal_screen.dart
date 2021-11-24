import 'package:flutter/cupertino.dart';
import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';

import 'create_deal_controller.dart';

class CreateDeal extends GetView<CreateDealController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<CreateDealController>(
      builder: (controller) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColors.red,
              centerTitle: false,
              title: Text(
                "Create Deal",
                style: textStyleWidget(
                    fontWeight: FontWights.semiBold,
                    color: Colors.white,
                    fontSize: FontSize.h1),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    VerticalSpacing(value: 15),
                    InkWell(
                      onTap: () {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (BuildContext context) {
                            return CupertinoActionSheet(
                              actions: <CupertinoActionSheetAction>[
                                CupertinoActionSheetAction(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        CupertinoIcons.camera,
                                        color: CupertinoColors.systemBlue,
                                      ),
                                      HorizontalSpacing(value: 10),
                                      const Text('Open Camera'),
                                    ],
                                  ),
                                  onPressed: () {
                                    controller.pickImageFromCamera();
                                    Navigator.pop(context);
                                  },
                                ),
                                CupertinoActionSheetAction(
                                  child: Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.collections,
                                        color: CupertinoColors.systemBlue,
                                      ),
                                      HorizontalSpacing(value: 10),
                                      const Text('Open Gallary'),
                                    ],
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                  ),
                                  onPressed: () {
                                    controller.pickImageFormGallary();

                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                          width: double.infinity,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: controller.isImageSelected
                              ? Image.file(controller.iFile)
                              : Text("Select Image")),
                    ),
                    VerticalSpacing(value: 15),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 230, 230, 100),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        controller: controller.BusinessNameController,
                        focusNode: controller.BusinessNameFocus,
                        readOnly: controller.readOnly,
                        style: textStyleWidget(
                            fontSize: FontSize.normalText,
                            fontWeight: FontWights.normal,
                            color: Colors.black.withOpacity(.5),
                            letterSpacing: 1.2),
                        decoration: InputDecoration(
                          hintText: "busniness name",
                          hintStyle: textStyleWidget(
                              fontSize: FontSize.smallText,
                              fontWeight: FontWights.light,
                              color: Colors.black.withOpacity(.5),
                              letterSpacing: 1.2),
                          contentPadding: EdgeInsets.only(bottom: 5, left: 5),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                        ),
                        onSubmitted: (value) {
                          if (controller.BusinessNameController.text
                              .trim()
                              .isEmpty) {
                            return;
                          }
                        },
                        cursorColor: Colors.black45,
                      ),
                    ),
                    VerticalSpacing(value: 10),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 230, 230, 100),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        controller: controller.BusinessEmailAddressController,
                        focusNode: controller.BusinessEmailAddressFocus,
                        readOnly: controller.readOnly,
                        style: textStyleWidget(
                            fontSize: FontSize.normalText,
                            fontWeight: FontWights.normal,
                            color: Colors.black.withOpacity(.5),
                            letterSpacing: 1.2),
                        decoration: InputDecoration(
                          hintText: "busniness email",
                          hintStyle: textStyleWidget(
                              fontSize: FontSize.smallText,
                              fontWeight: FontWights.light,
                              color: Colors.black.withOpacity(.5),
                              letterSpacing: 1.2),
                          contentPadding: EdgeInsets.only(bottom: 5, left: 5),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                        ),
                        onSubmitted: (value) {
                          if (controller.BusinessNameController.text
                              .trim()
                              .isEmpty) {
                            return;
                          }
                        },
                        cursorColor: Colors.black45,
                      ),
                    ),
                    VerticalSpacing(value: 10),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 230, 230, 100),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        controller: controller.descriptionController,
                        focusNode: controller.descriptionFocus,
                        readOnly: controller.readOnly,
                        style: textStyleWidget(
                            fontSize: FontSize.normalText,
                            fontWeight: FontWights.normal,
                            color: Colors.black.withOpacity(.5),
                            letterSpacing: 1.2),
                        decoration: InputDecoration(
                          hintText: "title",
                          hintStyle: textStyleWidget(
                              fontSize: FontSize.smallText,
                              fontWeight: FontWights.light,
                              color: Colors.black.withOpacity(.5),
                              letterSpacing: 1.2),
                          contentPadding: EdgeInsets.only(bottom: 5, left: 5),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                        ),
                        onSubmitted: (value) {
                          if (controller.BusinessNameController.text
                              .trim()
                              .isEmpty) {
                            return;
                          }
                        },
                        cursorColor: Colors.black45,
                      ),
                    ),
                    VerticalSpacing(value: 10),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 230, 230, 100),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        controller: controller.subDescriptionController,
                        focusNode: controller.subDescriptionFocus,
                        readOnly: controller.readOnly,
                        style: textStyleWidget(
                            fontSize: FontSize.normalText,
                            fontWeight: FontWights.normal,
                            color: Colors.black.withOpacity(.5),
                            letterSpacing: 1.2),
                        decoration: InputDecoration(
                          hintText: "description",
                          hintStyle: textStyleWidget(
                              fontSize: FontSize.smallText,
                              fontWeight: FontWights.light,
                              color: Colors.black.withOpacity(.5),
                              letterSpacing: 1.2),
                          contentPadding: EdgeInsets.only(bottom: 5, left: 5),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                        ),
                        onSubmitted: (value) {
                          if (controller.BusinessNameController.text
                              .trim()
                              .isEmpty) {
                            return;
                          }
                        },
                        cursorColor: Colors.black45,
                      ),
                    ),
                    VerticalSpacing(value: 10),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 230, 230, 100),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        controller: controller.shopCodeController,
                        focusNode: controller.shopCodeFocus,
                        readOnly: controller.readOnly,
                        style: textStyleWidget(
                            fontSize: FontSize.normalText,
                            fontWeight: FontWights.normal,
                            color: Colors.black.withOpacity(.5),
                            letterSpacing: 1.2),
                        decoration: InputDecoration(
                          hintText: "coupon code",
                          hintStyle: textStyleWidget(
                              fontSize: FontSize.smallText,
                              fontWeight: FontWights.light,
                              color: Colors.black.withOpacity(.5),
                              letterSpacing: 1.2),
                          contentPadding: EdgeInsets.only(bottom: 5, left: 5),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                        ),
                        onSubmitted: (value) {
                          if (controller.BusinessNameController.text
                              .trim()
                              .isEmpty) {
                            return;
                          }
                        },
                        cursorColor: Colors.black45,
                      ),
                    ),
                    VerticalSpacing(value: 10),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 230, 230, 100),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        controller: controller.shopNameController,
                        focusNode: controller.shopNameFocus,
                        readOnly: controller.readOnly,
                        style: textStyleWidget(
                            fontSize: FontSize.normalText,
                            fontWeight: FontWights.normal,
                            color: Colors.black.withOpacity(.5),
                            letterSpacing: 1.2),
                        decoration: InputDecoration(
                          hintText: "shop name",
                          hintStyle: textStyleWidget(
                              fontSize: FontSize.smallText,
                              fontWeight: FontWights.light,
                              color: Colors.black.withOpacity(.5),
                              letterSpacing: 1.2),
                          contentPadding: EdgeInsets.only(bottom: 5, left: 5),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                        ),
                        onSubmitted: (value) {
                          if (controller.BusinessNameController.text
                              .trim()
                              .isEmpty) {
                            return;
                          }
                        },
                        cursorColor: Colors.black45,
                      ),
                    ),
                    VerticalSpacing(value: 10),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 230, 230, 100),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        controller: controller.shopPhoneNumberController,
                        focusNode: controller.shopPhoneNumberFocus,
                        readOnly: controller.readOnly,
                        style: textStyleWidget(
                            fontSize: FontSize.normalText,
                            fontWeight: FontWights.normal,
                            color: Colors.black.withOpacity(.5),
                            letterSpacing: 1.2),
                        decoration: InputDecoration(
                          hintText: "shop phone number",
                          hintStyle: textStyleWidget(
                              fontSize: FontSize.smallText,
                              fontWeight: FontWights.light,
                              color: Colors.black.withOpacity(.5),
                              letterSpacing: 1.2),
                          contentPadding: EdgeInsets.only(bottom: 5, left: 5),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                        ),
                        onSubmitted: (value) {
                          if (controller.BusinessNameController.text
                              .trim()
                              .isEmpty) {
                            return;
                          }
                        },
                        cursorColor: Colors.black45,
                      ),
                    ),
                    VerticalSpacing(value: 10),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 230, 230, 100),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        controller: controller.shopAddressController,
                        focusNode: controller.shopAddressFocus,
                        readOnly: controller.readOnly,
                        style: textStyleWidget(
                            fontSize: FontSize.normalText,
                            fontWeight: FontWights.normal,
                            color: Colors.black.withOpacity(.5),
                            letterSpacing: 1.2),
                        decoration: InputDecoration(
                          hintText: "shop address",
                          hintStyle: textStyleWidget(
                              fontSize: FontSize.smallText,
                              fontWeight: FontWights.light,
                              color: Colors.black.withOpacity(.5),
                              letterSpacing: 1.2),
                          contentPadding: EdgeInsets.only(bottom: 5, left: 5),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(233, 230, 230, 100),
                                width: .4),
                          ),
                        ),
                        onSubmitted: (value) {
                          if (controller.BusinessNameController.text
                              .trim()
                              .isEmpty) {
                            return;
                          }
                        },
                        cursorColor: Colors.black45,
                      ),
                    ),
                    VerticalSpacing(value: 15),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: MaterialButton(
                          height: 40,
                          onPressed: () {
                            if (controller.isLoading) {
                              return;
                            }

                            if (controller.BusinessNameController.text
                                .trim()
                                .isEmpty) {
                              return;
                            }
                            if (controller.BusinessEmailAddressController.text
                                .trim()
                                .isEmpty) {
                              return;
                            }
                            if (controller.descriptionController.text
                                .trim()
                                .isEmpty) {
                              return;
                            }
                            if (controller.subDescriptionController.text
                                .trim()
                                .isEmpty) {
                              return;
                            }

                            if (controller.shopCodeController.text
                                .trim()
                                .isEmpty) {
                              return;
                            }
                            if (controller.shopNameController.text
                                .trim()
                                .isEmpty) {
                              return;
                            }
                            if (controller.shopPhoneNumberController.text
                                .trim()
                                .isEmpty) {
                              return;
                            }
                            if (controller.shopAddressController.text
                                .trim()
                                .isEmpty) {
                              return;
                            }

                            controller.createDeal(controller.iFile);
                          },
                          splashColor: Colors.orange,
                          child: controller.isLoading
                              ? SizedBox(
                                  child: CircularProgressIndicator(color:Colors.white,),
                                  width: 15,
                                  height: 15,
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.business,
                                        color: AppColors.white),
                                    HorizontalSpacing(value: 10),
                                    Text(
                                      "Create Deal"!,
                                      style: textStyleWidget(
                                          color: AppColors.white,
                                          letterSpacing: 1.2),
                                    ),
                                  ],
                                ),
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          animationDuration: Duration(seconds: 1),
                          minWidth: double.infinity,
                          color: AppColors.red.withOpacity(.9),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          visualDensity: VisualDensity.adaptivePlatformDensity),
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }
}
