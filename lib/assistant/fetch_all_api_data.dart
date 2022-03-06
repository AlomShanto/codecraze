import 'dart:convert';

import 'package:codecraze/assistant/helper.dart';
import 'package:codecraze/model/get_all_contests.dart';
import 'package:codecraze/model/get_all_submissions.dart';
import 'package:codecraze/model/get_user_info.dart';
import 'package:http/http.dart' as http;

class LoadAllApiData {

  static Future<GetAllSubmissions?> fetchAllSubmissionData(String userId) async {
    var url = Uri.parse(Helper.userSubmissions+userId+"&from=1");
    var heroResponse = await http.get(url);

    if (heroResponse.statusCode == 200) {
      var jsonDecode = json.decode(heroResponse.body);
      var convertData = json.encode(jsonDecode);
      //print(heroResponse.body);
      // print(jsonDecode);
      // print(convertData);
      return getAllSubmissionsFromJson(convertData);
    }

    return null;
  }
  static Future<GetUserInfo?> fetchUserInfoData(String userId) async {
    var url = Uri.parse(Helper.userInfo+userId);
    var heroResponse = await http.get(url);
    if (heroResponse.statusCode == 200) {
      var jsonDecode = json.decode(heroResponse.body);
      var convertData = json.encode(jsonDecode);
      //print(heroResponse.body);
      // print(jsonDecode);
      // print(convertData);
      return getUserInfoFromJson(convertData);
    }

    return null;
  }

  static Future<GetContestInfo?> fetchContestInfoData(String userId) async {
    var url = Uri.parse(Helper.userContestRecord+userId);
    var heroResponse = await http.get(url);
    if (heroResponse.statusCode == 200) {
      var jsonDecode = json.decode(heroResponse.body);
      var convertData = json.encode(jsonDecode);
      //print(heroResponse.body);
      // print(jsonDecode);
      //print(convertData);
      return getContestInfoFromJson(convertData);
    }

    return null;
  }
}