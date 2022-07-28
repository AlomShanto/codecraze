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

class Controller1{

  var loadingSubmissionList1 = true.obs;

  var loadingUserInfoList1 = true.obs;

  var loadingContestInfoList1 = true.obs;


  late Calculation cal1;
  late ContestCalculator cCal1;

  var dataSubmissionList1 = List<Result>.empty().obs;

  var dataUserInfoList1 = List<Result1>.empty().obs;

  var dataContestInfoList1 = List<Result2>.empty().obs;

  void init(BuildContext context){
    getAllSubmissionsList1();

    getUserInfoList1();

    getContestInfoList1();
  }

  getAllSubmissionsList1() async{
    try{
      loadingSubmissionList1(true).obs;
      dataSubmissionList1.clear();
      var data = await LoadAllApiData.fetchAllSubmissionData(Compare.userId1);

      if(data != null){
        //print("Submisions data retrieved");
        dataSubmissionList1.value = data.result;
        //print(dataSubmissionList.length);
        cal1=new Calculation(results: dataSubmissionList1);
        cal1.main();
      }
    }catch(e){
      print(e.toString()+" submission error");
    }finally{
      loadingSubmissionList1(false).obs;
    }
  }

  getUserInfoList1() async{
    try{
      loadingUserInfoList1(true).obs;
      dataUserInfoList1.clear();
      var data = await LoadAllApiData.fetchUserInfoData(Compare.userId1);

      if(data != null){
        //print("Submisions data retrieved");
        dataUserInfoList1.value = data.result;
      }
    }catch(e){
      print(e.toString()+" submission error");
    }finally{
      loadingUserInfoList1(false).obs;
    }
  }

  getContestInfoList1() async{
    try{
      loadingContestInfoList1(true).obs;
      dataContestInfoList1.clear();
      var data = await LoadAllApiData.fetchContestInfoData(Compare.userId1);

      if(data != null){
        //print("Contest data retrieved");
        dataContestInfoList1.value = data.result;
        cCal1=new ContestCalculator(result: dataContestInfoList1);
        cCal1.main();
        //print(dataContestInfoList.value);
      }
    }catch(e){
      print(e.toString()+" submission error");
    }finally{
      loadingContestInfoList1(false).obs;
    }
  }

}