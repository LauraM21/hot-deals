// To parse this JSON data, do
//
//     final dealModel = dealModelFromJson(jsonString);

import 'dart:convert';

DealModel dealModelFromJson(String str) => DealModel.fromJson(json.decode(str));

String dealModelToJson(DealModel data) => json.encode(data.toJson());

class DealModel {
  DealModel({
    required this.shopPhoneNumber,
    required this.businessEmail,
    required this.shopCode,
    required this.dealUniqId,
    required this.businessName,
    required this.shopName,
    required this.description,
    required this.shopAddress,
    required this.userId,
    required this.paidType,
    required this.imageLink,
    required this.subDescription,
    required this.paidData,
    required this.expireData,
  });

  String shopPhoneNumber;
  String businessEmail;
  String shopCode;
  String dealUniqId;
  String businessName;
  String shopName;
  String description;
  String shopAddress;
  String userId;
  String paidType;
  String imageLink;
  String subDescription;
  String paidData;
  String expireData;

  factory DealModel.fromJson(Map<String, dynamic> json) => DealModel(
    shopPhoneNumber: json["shopPhoneNumber"] == null ? null : json["shopPhoneNumber"],
    businessEmail: json["businessEmail"] == null ? null : json["businessEmail"],
    shopCode: json["shopCode"] == null ? null : json["shopCode"],
    dealUniqId: json["dealUniqId"] == null ? null : json["dealUniqId"],
    businessName: json["businessName"] == null ? null : json["businessName"],
    shopName: json["shopName"] == null ? null : json["shopName"],
    description: json["description"] == null ? null : json["description"],
    shopAddress: json["shopAddress"] == null ? null : json["shopAddress"],
    userId: json["userId"] == null ? null : json["userId"],
    paidType: json["paidType"] == null ? null : json["paidType"],
    imageLink: json["imageLink"] == null ? null : json["imageLink"],
    subDescription: json["subDescription"] == null ? null : json["subDescription"],
    paidData: json["paidData"] == null ? null : json["paidData"],
    expireData: json["expireData"] == null ? null : json["expireData"],
  );

  Map<String, dynamic> toJson() => {
    "shopPhoneNumber": shopPhoneNumber == null ? null : shopPhoneNumber,
    "businessEmail": businessEmail == null ? null : businessEmail,
    "shopCode": shopCode == null ? null : shopCode,
    "dealUniqId": dealUniqId == null ? null : dealUniqId,
    "businessName": businessName == null ? null : businessName,
    "shopName": shopName == null ? null : shopName,
    "description": description == null ? null : description,
    "shopAddress": shopAddress == null ? null : shopAddress,
    "userId": userId == null ? null : userId,
    "paidType": paidType == null ? null : paidType,
    "imageLink": imageLink == null ? null : imageLink,
    "subDescription": subDescription == null ? null : subDescription,
    "paidData": paidData == null ? null : paidData,
    "expireData": expireData == null ? null : expireData,
  };
}
