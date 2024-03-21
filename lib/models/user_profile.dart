import 'dart:convert';

UserProfile userProfileFromJson(String str) => UserProfile.fromJson(json.decode(str));
String userProfileToJson(UserProfile data) => json.encode(data.toJson());

class UserProfile {
  String? accessToken;
  String? userName;
  String? email;
  int? expireInSeconds;

  UserProfile({
    this.accessToken,
    this.expireInSeconds,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
    accessToken: json["accessToken"],
    expireInSeconds: json["expireInSeconds"],
  );

  Map<String, dynamic> toJson() => {
    "accessToken": accessToken,
    "expireInSeconds": expireInSeconds! + DateTime.now().millisecondsSinceEpoch ~/ 1000,
  };
}