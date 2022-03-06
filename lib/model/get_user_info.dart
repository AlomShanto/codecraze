// To parse this JSON data, do
//
//     final getUserInfo = getUserInfoFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetUserInfo getUserInfoFromJson(String str) => GetUserInfo.fromJson(json.decode(str));

String getUserInfoToJson(GetUserInfo data) => json.encode(data.toJson());

class GetUserInfo {
  GetUserInfo({
    required this.status,
    required this.result,
  });

  String? status;
  List<Result1> result;

  factory GetUserInfo.fromJson(Map<String, dynamic> json) => GetUserInfo(
    status: json["status"],
    result: List<Result1>.from(json["result"].map((x) => Result1.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class Result1 {
  Result1({
    required this.lastName,
    required this.country,
    required this.lastOnlineTimeSeconds,
    required this.city,
    required this.rating,
    required this.friendOfCount,
    required this.titlePhoto,
    required this.handle,
    required this.avatar,
    required this.firstName,
    required this.contribution,
    required this.organization,
    required this.rank,
    required this.maxRating,
    required this.registrationTimeSeconds,
    required this.maxRank,
  });

  String? lastName;
  String? country;
  num? lastOnlineTimeSeconds;
  String? city;
  num? rating;
  num? friendOfCount;
  String? titlePhoto;
  String? handle;
  String? avatar;
  String? firstName;
  num? contribution;
  String? organization;
  String? rank;
  num? maxRating;
  num? registrationTimeSeconds;
  String? maxRank;

  factory Result1.fromJson(Map<String, dynamic> json) => Result1(
    lastName: json["lastName"],
    country: json["country"],
    lastOnlineTimeSeconds: json["lastOnlineTimeSeconds"],
    city: json["city"],
    rating: json["rating"],
    friendOfCount: json["friendOfCount"],
    titlePhoto: json["titlePhoto"],
    handle: json["handle"],
    avatar: json["avatar"],
    firstName: json["firstName"],
    contribution: json["contribution"],
    organization: json["organization"],
    rank: json["rank"],
    maxRating: json["maxRating"],
    registrationTimeSeconds: json["registrationTimeSeconds"],
    maxRank: json["maxRank"],
  );

  Map<String, dynamic> toJson() => {
    "lastName": lastName,
    "country": country,
    "lastOnlineTimeSeconds": lastOnlineTimeSeconds,
    "city": city,
    "rating": rating,
    "friendOfCount": friendOfCount,
    "titlePhoto": titlePhoto,
    "handle": handle,
    "avatar": avatar,
    "firstName": firstName,
    "contribution": contribution,
    "organization": organization,
    "rank": rank,
    "maxRating": maxRating,
    "registrationTimeSeconds": registrationTimeSeconds,
    "maxRank": maxRank,
  };
}
