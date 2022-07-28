import 'package:codecraze/Screens/Compare/search_compare_page.dart';
import 'package:codecraze/Screens/Statistics/search_page.dart';
import 'package:codecraze/assistant/calculations.dart';
import 'package:codecraze/assistant/contest_calculator.dart';
import 'package:codecraze/model/get_all_contests.dart';
import 'package:codecraze/model/get_all_submissions.dart';
import 'package:codecraze/model/get_user_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'fetch_all_api_data.dart';

class Controller2{

  var loadingSubmissionList2 = true.obs;

  var loadingUserInfoList2 = true.obs;

  var loadingContestInfoList2 = true.obs;


  late Calculation cal2;
  late ContestCalculator cCal2;

  var dataSubmissionList2 = List<Result>.empty().obs;

  var dataUserInfoList2 = List<Result1>.empty().obs;

  var dataContestInfoList2 = List<Result2>.empty().obs;

  void init(BuildContext context){
    getAllSubmissionsList2();

    getUserInfoList2();

    getContestInfoList2();
  }

  getAllSubmissionsList2() async{
    try{
      loadingSubmissionList2(true).obs;
      dataSubmissionList2.clear();
      var data = await LoadAllApiData.fetchAllSubmissionData(Compare.userId2);

      if(data != null){
        //print("Submisions data retrieved");
        dataSubmissionList2.value = data.result;
        //print(dataSubmissionList.length);
        cal2=new Calculation(results: dataSubmissionList2);
        cal2.main();
      }
    }catch(e){
      print(e.toString()+" submission error");
    }finally{
      loadingSubmissionList2(false).obs;
    }
  }

  getUserInfoList2() async{
    try{
      loadingUserInfoList2(true).obs;
      dataUserInfoList2.clear();
      var data = await LoadAllApiData.fetchUserInfoData(Compare.userId2);

      if(data != null){
        //print("Submisions data retrieved");
        dataUserInfoList2.value = data.result;
      }
    }catch(e){
      print(e.toString()+" submission error");
    }finally{
      loadingUserInfoList2(false).obs;
    }
  }

  getContestInfoList2() async{
    try{
      loadingContestInfoList2(true).obs;
      dataContestInfoList2.clear();
      var data = await LoadAllApiData.fetchContestInfoData(Compare.userId2);

      if(data != null){
        //print("Contest data retrieved");
        dataContestInfoList2.value = data.result;
        cCal2=new ContestCalculator(result: dataContestInfoList2);
        cCal2.main();
        //print(dataContestInfoList.value);
      }
    }catch(e){
      print(e.toString()+" submission error");
    }finally{
      loadingContestInfoList2(false).obs;
    }
  }

}