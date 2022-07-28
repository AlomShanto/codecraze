

import 'package:meta/meta.dart';
import 'dart:convert';

GetContestList getContestListFromJson(String str) => GetContestList.fromJson(json.decode(str));

String getContestListToJson(GetContestList data) => json.encode(data.toJson());

class GetContestList {
  GetContestList({
    required this.status,
    required this.result,
  });

  String status;
  List<Result3> result;

  factory GetContestList.fromJson(Map<String, dynamic> json) => GetContestList(
    status: json["status"],
    result: List<Result3>.from(json["result"].map((x) => Result3.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class Result3 {
  Result3({
    required this.id,
    required this.name,
    required this.type,
    required this.phase,
    required this.frozen,
    required this.durationSeconds,
    required this.startTimeSeconds,
    required this.relativeTimeSeconds,
  });

  int id;
  String name;
  Type ?type;
  Phase ?phase;
  bool frozen;
  int durationSeconds;
  int startTimeSeconds;
  int relativeTimeSeconds;

  factory Result3.fromJson(Map<String, dynamic> json) => Result3(
    id: json["id"],
    name: json["name"],
    type: typeValues.map[json["type"]],
    phase: phaseValues.map[json["phase"]],
    frozen: json["frozen"],
    durationSeconds: json["durationSeconds"],
    startTimeSeconds: json["startTimeSeconds"],
    relativeTimeSeconds: json["relativeTimeSeconds"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "type": typeValues.reverse[type],
    "phase": phaseValues.reverse[phase],
    "frozen": frozen,
    "durationSeconds": durationSeconds,
    "startTimeSeconds": startTimeSeconds,
    "relativeTimeSeconds": relativeTimeSeconds,
  };
}

enum Phase { BEFORE, FINISHED, PENDING_SYSTEM_TEST }

final phaseValues = EnumValues({
  "BEFORE": Phase.BEFORE,
  "FINISHED": Phase.FINISHED,
  "PENDING_SYSTEM_TEST": Phase.PENDING_SYSTEM_TEST
});

enum Type { CF, ICPC, IOI }

final typeValues = EnumValues({
  "CF": Type.CF,
  "ICPC": Type.ICPC,
  "IOI": Type.IOI
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
