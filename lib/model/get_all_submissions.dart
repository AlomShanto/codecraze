// To parse this JSON data, do
//
//     final getAllSubmissions = getAllSubmissionsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetAllSubmissions getAllSubmissionsFromJson(String str) => GetAllSubmissions.fromJson(json.decode(str));

String getAllSubmissionsToJson(GetAllSubmissions data) => json.encode(data.toJson());

class GetAllSubmissions {
  GetAllSubmissions({
    required this.status,
    required this.result,
  });

  String? status;
  List<Result> result;

  factory GetAllSubmissions.fromJson(Map<String, dynamic> json) => GetAllSubmissions(
    status: statusValues.map[json["status"]],
    result: List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": statusValues.reverse[status],
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    required this.id,
    required this.contestId,
    required this.creationTimeSeconds,
    required this.relativeTimeSeconds,
    required this.problem,
    required this.author,
    required this.programmingLanguage,
    required this.verdict,
    required this.testset,
    required this.passedTestCount,
    required this.timeConsumedMillis,
    required this.memoryConsumedBytes,
    required this.points,
  });

  num? id;
  num? contestId;
  num? creationTimeSeconds;
  num? relativeTimeSeconds;
  Problem? problem;
  Author? author;
  String? programmingLanguage;
  String? verdict;
  Testset? testset;
  num? passedTestCount;
  num? timeConsumedMillis;
  num? memoryConsumedBytes;
  num? points;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"],
    contestId: json["contestId"],
    creationTimeSeconds: json["creationTimeSeconds"],
    relativeTimeSeconds: json["relativeTimeSeconds"],
    problem: Problem.fromJson(json["problem"]),
    author: Author.fromJson(json["author"]),
    programmingLanguage: programmingLanguageValues.map[json["programmingLanguage"]],
    verdict: statusValues.map[json["verdict"]],
    testset: testsetValues.map[json["testset"]],
    passedTestCount: json["passedTestCount"],
    timeConsumedMillis: json["timeConsumedMillis"],
    memoryConsumedBytes: json["memoryConsumedBytes"],
    points: json["points"] == null ? null : json["points"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "contestId": contestId,
    "creationTimeSeconds": creationTimeSeconds,
    "relativeTimeSeconds": relativeTimeSeconds,
    "problem": problem!.toJson(),
    "author": author!.toJson(),
    "programmingLanguage": programmingLanguageValues.reverse[programmingLanguage],
    "verdict": statusValues.reverse[verdict],
    "testset": testsetValues.reverse[testset],
    "passedTestCount": passedTestCount,
    "timeConsumedMillis": timeConsumedMillis,
    "memoryConsumedBytes": memoryConsumedBytes,
    "points": points == null ? null : points,
  };
}

class Author {
  Author({
    required this.contestId,
    required this.members,
    required this.participantType,
    required this.ghost,
    required this.startTimeSeconds,
    required this.room,
  });

  num? contestId;
  List<Member?> members;
  ParticipantType? participantType;
  bool? ghost;
  num? startTimeSeconds;
  num? room;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
    contestId: json["contestId"],
    members: List<Member>.from(json["members"].map((x) => Member.fromJson(x))),
    participantType: participantTypeValues.map[json["participantType"]],
    ghost: json["ghost"],
    startTimeSeconds: json["startTimeSeconds"] == null ? null : json["startTimeSeconds"],
    room: json["room"] == null ? null : json["room"],
  );

  Map<String, dynamic> toJson() => {
    "contestId": contestId,
    "members": List<dynamic>.from(members.map((x) => x!.toJson())),
    "participantType": participantTypeValues.reverse[participantType],
    "ghost": ghost,
    "startTimeSeconds": startTimeSeconds == null ? null : startTimeSeconds,
    "room": room == null ? null : room,
  };
}

class Member {
  Member({
    required this.handle,
  });

  Handle? handle;

  factory Member.fromJson(Map<String, dynamic> json) => Member(
    handle: handleValues.map[json["handle"]],
  );

  Map<String, dynamic> toJson() => {
    "handle": handleValues.reverse[handle],
  };
}

enum Handle { TENKEI }

final handleValues = EnumValues({
  "tenkei": Handle.TENKEI
});

enum ParticipantType { PRACTICE, CONTESTANT, OUT_OF_COMPETITION, VIRTUAL }

final participantTypeValues = EnumValues({
  "CONTESTANT": ParticipantType.CONTESTANT,
  "OUT_OF_COMPETITION": ParticipantType.OUT_OF_COMPETITION,
  "PRACTICE": ParticipantType.PRACTICE,
  "VIRTUAL": ParticipantType.VIRTUAL
});

class Problem {
  Problem({
    required this.contestId,
    required this.index,
    required this.name,
    required this.type,
    required this.points,
    required this.rating,
    required this.tags,
  });

  num? contestId;
  String? index;
  String? name;
  Type? type;
  num? points;
  num? rating;
  List<Tag?> tags;

  factory Problem.fromJson(Map<String, dynamic> json) => Problem(
    contestId: json["contestId"],
    index: indexValues.map[json["index"]],
    name: json["name"],
    type: typeValues.map[json["type"]],
    points: json["points"] == null ? null : json["points"],
    rating: json["rating"] == null ? null : json["rating"],
    tags: List<Tag>.from(json["tags"].map((x) => tagValues.map[x])),
  );

  Map<String, dynamic> toJson() => {
    "contestId": contestId,
    "index": indexValues.reverse[index],
    "name": name,
    "type": typeValues.reverse[type],
    "points": points == null ? null : points,
    "rating": rating == null ? null : rating,
    "tags": List<dynamic>.from(tags.map((x) => tagValues.reverse[x])),
  };
}

enum Index { F, E, D, C, B, A, G, F2, F1, C1, C2, E1, E2, H, B2, B1, I, H1, D1, D2, A1, A2, G1, G2, H2, K, N, J, L, E3, B3, A3, M, F3, C3, O, D3, R, Q, P, G3 }

final indexValues = EnumValues({
  "A": "A",
  "A1": "A1",
  "A2": "A2",
  "A3": "A3",
  "B": "B",
  "B1": "B1",
  "B2": "B2",
  "B3": "B3",
  "C": "C",
  "C1": "C1",
  "C2": "C2",
  "C3": "C3",
  "D": "D",
  "D1": "D1",
  "D2": "D2",
  "D3": "D3",
  "E": "E",
  "E1": "E1",
  "E2": "E2",
  "E3": "E3",
  "F": "F",
  "F1": "F1",
  "F2": "F2",
  "F3": "F3",
  "G": "G",
  "G1": "G1",
  "G2": "G2",
  "G3": "G3",
  "H": "H",
  "H1": "H1",
  "H2": "H2",
  "I": "I",
  "J": "J",
  "K": "K",
  "L": "L",
  "M": "M",
  "N": "N",
  "O": "O",
  "P": "P",
  "Q": "Q",
  "R": "R",
});

enum Tag { BINARY_SEARCH, DATA_STRUCTURES, DP, SORTINGS, CONSTRUCTIVE_ALGORITHMS, GREEDY, BITMASKS, BRUTE_FORCE, DFS_AND_SIMILAR, GRAPHS, MATH, COMBINATORICS, GEOMETRY, STRINGS, DSU, IMPLEMENTATION, TREES, INTERACTIVE, NUMBER_THEORY, SHORTEST_PATHS, HASHING, TWO_POINTERS, GAMES, MATRICES, STRING_SUFFIX_STRUCTURES, THE_2_SAT, SPECIAL, CHINESE_REMAINDER_THEOREM, DIVIDE_AND_CONQUER, FFT, FLOWS, PROBABILITIES, TERNARY_SEARCH, GRAPH_MATCHINGS, MEET_IN_THE_MIDDLE, EXPRESSION_PARSING, SCHEDULES }

final tagValues = EnumValues({
  "binary search": Tag.BINARY_SEARCH,
  "bitmasks": Tag.BITMASKS,
  "brute force": Tag.BRUTE_FORCE,
  "chinese remainder theorem": Tag.CHINESE_REMAINDER_THEOREM,
  "combinatorics": Tag.COMBINATORICS,
  "constructive algorithms": Tag.CONSTRUCTIVE_ALGORITHMS,
  "data structures": Tag.DATA_STRUCTURES,
  "dfs and similar": Tag.DFS_AND_SIMILAR,
  "divide and conquer": Tag.DIVIDE_AND_CONQUER,
  "dp": Tag.DP,
  "dsu": Tag.DSU,
  "expression parsing": Tag.EXPRESSION_PARSING,
  "fft": Tag.FFT,
  "flows": Tag.FLOWS,
  "games": Tag.GAMES,
  "geometry": Tag.GEOMETRY,
  "graphs": Tag.GRAPHS,
  "graph matchings": Tag.GRAPH_MATCHINGS,
  "greedy": Tag.GREEDY,
  "hashing": Tag.HASHING,
  "implementation": Tag.IMPLEMENTATION,
  "interactive": Tag.INTERACTIVE,
  "math": Tag.MATH,
  "matrices": Tag.MATRICES,
  "meet-in-the-middle": Tag.MEET_IN_THE_MIDDLE,
  "number theory": Tag.NUMBER_THEORY,
  "probabilities": Tag.PROBABILITIES,
  "schedules": Tag.SCHEDULES,
  "shortest paths": Tag.SHORTEST_PATHS,
  "sortings": Tag.SORTINGS,
  "*special": Tag.SPECIAL,
  "strings": Tag.STRINGS,
  "string suffix structures": Tag.STRING_SUFFIX_STRUCTURES,
  "ternary search": Tag.TERNARY_SEARCH,
  "2-sat": Tag.THE_2_SAT,
  "trees": Tag.TREES,
  "two pointers": Tag.TWO_POINTERS
});

enum Type { PROGRAMMING }

final typeValues = EnumValues({
  "PROGRAMMING": Type.PROGRAMMING
});

enum ProgrammingLanguage { GNU_C_17, UNKNOWN_X, JAVA_8, GNU_C_11, GNU_C_1764, GNU_C_14, CLANG_17_DIAGNOSTICS, GNU_C11, PY_PY_3, PYTHON_3, GNU_C_17_DIAGNOSTICS, TCL, GNU_C, GNU_C_0_X, PROGRAMMING_LANGUAGE_GNU_C }

final programmingLanguageValues = EnumValues({
  "Clang++17 Diagnostics": "Clang++17 Diagnostics",
  "GNU C++": "GNU C++",
  "GNU C11": "GNU C11",
  "GNU C++0x": "GNU C++0x",
  "GNU C++11": "GNU C++11",
  "GNU C++14": "GNU C++14",
  "GNU C++17": "GNU C++17",
  "GNU C++17 (64)": "GNU C++17 (64)",
  "GNU C++17 Diagnostics": "GNU C++17 Diagnostics",
  "Java 8": "Java 8",
  "GNU C": "GNU C",
  "Python 3": "Python 3",
  "PyPy 3": "PyPy 3",
  "Tcl": "Tcl",
  "UnknownX": "UnknownX"
});

enum Testset { TESTS, PRETESTS, CHALLENGES, TESTS1, TESTS3, TESTS2 }

final testsetValues = EnumValues({
  "CHALLENGES": Testset.CHALLENGES,
  "PRETESTS": Testset.PRETESTS,
  "TESTS": Testset.TESTS,
  "TESTS1": Testset.TESTS1,
  "TESTS2": Testset.TESTS2,
  "TESTS3": Testset.TESTS3
});

enum Status { OK, WRONG_ANSWER, RUNTIME_ERROR, TIME_LIMIT_EXCEEDED, CHALLENGED, IDLENESS_LIMIT_EXCEEDED, MEMORY_LIMIT_EXCEEDED, COMPILATION_ERROR, PARTIAL }

final statusValues = EnumValues({
  "CHALLENGED": "CHALLENGED",
  "COMPILATION_ERROR": "COMPILATION_ERROR",
  "IDLENESS_LIMIT_EXCEEDED": "IDLENESS_LIMIT_EXCEEDED",
  "MEMORY_LIMIT_EXCEEDED": "MEMORY_LIMIT_EXCEEDED",
  "OK": "ACCEPTED",
  "PARTIAL": "PARTIAL",
  "RUNTIME_ERROR": "RUNTIME_ERROR",
  "TIME_LIMIT_EXCEEDED": "TIME_LIMIT_EXCEEDED",
  "WRONG_ANSWER": "WRONG_ANSWER"
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
