import 'package:codecraze/Screens/Statistics/search_page.dart';
import 'package:codecraze/assistant/calculations.dart';
import 'package:codecraze/assistant/contest_calculator.dart';
import 'package:codecraze/model/get_all_contests.dart';
import 'package:codecraze/model/get_all_submissions.dart';
import 'package:codecraze/model/get_user_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'fetch_all_api_data.dart';

class Controller{

  var loadingSubmissionList = true.obs;
  var loadingUserInfoList = true.obs;
  var loadingContestInfoList = true.obs;

  late Calculation cal;
  late ContestCalculator cCal;

  var dataSubmissionList = List<Result>.empty().obs;
  var dataUserInfoList = List<Result1>.empty().obs;
  var dataContestInfoList = List<Result2>.empty().obs;

  void init(BuildContext context){
    getAllSubmissionsList();
    getUserInfoList();
    getContestInfoList();
  }

  getAllSubmissionsList() async{
    try{
      loadingSubmissionList(true).obs;
      dataSubmissionList.clear();
      var data = await LoadAllApiData.fetchAllSubmissionData(SearchPage.userId);

      if(data != null){
        //print("Submisions data retrieved");
        dataSubmissionList.value = data.result;
        //print(dataSubmissionList.length);
        cal=new Calculation(results: dataSubmissionList);
        cal.main();
      }
    }catch(e){
      print(e.toString()+" submission error");
    }finally{
      loadingSubmissionList(false).obs;
    }
  }

  getUserInfoList() async{
    try{
      loadingUserInfoList(true).obs;
      dataUserInfoList.clear();
      var data = await LoadAllApiData.fetchUserInfoData(SearchPage.userId);

      if(data != null){
        //print("Submisions data retrieved");
        dataUserInfoList.value = data.result;
      }
    }catch(e){
      print(e.toString()+" submission error");
    }finally{
      loadingUserInfoList(false).obs;
    }
  }

  getContestInfoList() async{
    try{
      loadingContestInfoList(true).obs;
      dataContestInfoList.clear();
      var data = await LoadAllApiData.fetchContestInfoData(SearchPage.userId);

      if(data != null){
        //print("Contest data retrieved");
        dataContestInfoList.value = data.result;
        cCal=new ContestCalculator(result: dataContestInfoList);
        cCal.main();
        //print(dataContestInfoList.value);
      }
    }catch(e){
      print(e.toString()+" submission error");
    }finally{
      loadingContestInfoList(false).obs;
    }
  }

}