// To parse this JSON data, do
//
//     final getContestInfo = getContestInfoFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetContestInfo getContestInfoFromJson(String str) => GetContestInfo.fromJson(json.decode(str));

String getContestInfoToJson(GetContestInfo data) => json.encode(data.toJson());

class GetContestInfo {
  GetContestInfo({
    required this.status,
    required this.result,
  });

  String status;
  List<Result2> result;

  factory GetContestInfo.fromJson(Map<String, dynamic> json) => GetContestInfo(
    status: json["status"],
    result: List<Result2>.from(json["result"].map((x) => Result2.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class Result2 {
  Result2({
    required this.contestId,
    required this.contestName,
    required this.handle,
    required this.rank,
    required this.ratingUpdateTimeSeconds,
    required this.oldRating,
    required this.newRating,
  });

  int contestId;
  String contestName;
  Handle? handle;
  int rank;
  int ratingUpdateTimeSeconds;
  int oldRating;
  int newRating;

  factory Result2.fromJson(Map<String, dynamic> json) => Result2(
    contestId: json["contestId"],
    contestName: json["contestName"],
    handle: handleValues.map[json["handle"]],
    rank: json["rank"],
    ratingUpdateTimeSeconds: json["ratingUpdateTimeSeconds"],
    oldRating: json["oldRating"],
    newRating: json["newRating"],
  );

  Map<String, dynamic> toJson() => {
    "contestId": contestId,
    "contestName": contestName,
    "handle": handleValues.reverse[handle],
    "rank": rank,
    "ratingUpdateTimeSeconds": ratingUpdateTimeSeconds,
    "oldRating": oldRating,
    "newRating": newRating,
  };
}

enum Handle { ALOM_SHANTO }

final handleValues = EnumValues({
  "Alom_Shanto": Handle.ALOM_SHANTO
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
