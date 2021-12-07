// To parse this JSON data, do
//
//     final userProfile = userProfileFromJson(jsonString);

import 'dart:convert';

UserProfile userProfileFromJson(String str) => UserProfile.fromJson(json.decode(str));

String userProfileToJson(UserProfile data) => json.encode(data.toJson());

class UserProfile {
  UserProfile({
    this.userUniqId,
    this.photoUrl,
    this.userName,
    this.dateTime,
    this.eMail,
  });

  String? userUniqId;
  String? photoUrl;
  String? userName;
  DateTime? dateTime;
  String? eMail;

  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
    userUniqId: json["userUniqId"],
    photoUrl: json["photoUrl"],
    userName: json["userName"],
    dateTime: DateTime.parse(json[" DateTime"]),
    eMail: json["eMail"],
  );

  Map<String, dynamic> toJson() => {
    "userUniqId": userUniqId,
    "photoUrl": photoUrl,
    "userName": userName,
    " DateTime": dateTime.toString(),
    "eMail": eMail,
  };
}
