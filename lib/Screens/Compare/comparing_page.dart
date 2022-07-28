import 'package:codecraze/Screens/Statistics/SolvedProblems_page.dart';
import 'package:codecraze/Screens/Statistics/all_contests.dart';
import 'package:codecraze/Screens/Statistics/search_page.dart';
import 'package:codecraze/Screens/Statistics/submission_page.dart';
import 'package:codecraze/Screens/Statistics/unsolved_problems_page.dart';
import 'package:codecraze/assistant/controller.dart';
import 'package:codecraze/assistant/controller1.dart';
import 'package:codecraze/assistant/controller2.dart';
import 'package:codecraze/assistant/reUsableContainer.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ComparePage extends StatefulWidget {
  const ComparePage({Key? key}) : super(key: key);

  static String name = "";
  static String name2 = "";
  @override
  ComparePageState createState() => ComparePageState();
}

class ComparePageState extends State<ComparePage> {
  final controller = Get.put(Controller1());
  final controller1 = Get.put(Controller2());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getAllSubmissionsList1();
    controller1.getAllSubmissionsList2();
    controller.getUserInfoList1();
    controller1.getUserInfoList2();
    controller.getContestInfoList1();
    controller1.getContestInfoList2();
  }

  ReUsableContainer reUse=new ReUsableContainer();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Compare',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          )
      ),
      body: Obx(() {
        if (controller.loadingUserInfoList1.value ||
            controller.loadingSubmissionList1.value || controller1.loadingUserInfoList2.value || controller1.loadingSubmissionList2.value
            || controller.loadingContestInfoList1.value || controller1.loadingContestInfoList2.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (controller.dataUserInfoList1.length == 0 || controller1.dataUserInfoList2.length == 0) {
          return Center(
            child: Text('One or both user Not Found'),
          );
        } else {
          ComparePage.name=controller.dataUserInfoList1[0].firstName.toString()+" "+controller.dataUserInfoList1[0].lastName.toString();
          ComparePage.name2=controller1.dataUserInfoList2[0].firstName.toString()+" "+controller1.dataUserInfoList2[0].lastName.toString();
          return SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .03,
                      right: SizeConfig.screenWidth * .03,
                      top: SizeConfig.screenHeight * .02),
                  child: Container(
                      height: SizeConfig.screenHeight * .1,
                      width: SizeConfig.screenWidth * 9.04,
                      child: Row(
                        children: [
                          reUse.containerWithBold(ComparePage.name, .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithBold('VS', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithBold(ComparePage.name2, .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      )),
                ),

                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .03,
                      right: SizeConfig.screenWidth * .03,
                      top: SizeConfig.screenHeight * .1+SizeConfig.screenHeight * .02),
                  child: Container(
                      height: SizeConfig.screenHeight * .1,
                      width: SizeConfig.screenWidth * 9.04,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold(controller.dataUserInfoList1[0].rank.toString(), .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithBold('Current Rank', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold(controller1.dataUserInfoList2[0].rank.toString(), .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .03,
                      right: SizeConfig.screenWidth * .03,
                      top: SizeConfig.screenHeight * .2+SizeConfig.screenHeight * .02),
                  child: Container(
                      height: SizeConfig.screenHeight * .1,
                      width: SizeConfig.screenWidth * 9.04,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold(controller.dataUserInfoList1[0].rating.toString(), .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithBold('Current Rating', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold(controller1.dataUserInfoList2[0].rating.toString(), .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      )),
                ),

                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .03,
                      right: SizeConfig.screenWidth * .03,
                      top: SizeConfig.screenHeight * .3+SizeConfig.screenHeight * .02),
                  child: Container(
                      height: SizeConfig.screenHeight * .1,
                      width: SizeConfig.screenWidth * 9.04,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold(controller.dataUserInfoList1[0].maxRank.toString(), .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithBold('Max Rank', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold(controller1.dataUserInfoList2[0].maxRank.toString(), .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .03,
                      right: SizeConfig.screenWidth * .03,
                      top: SizeConfig.screenHeight * .4+SizeConfig.screenHeight * .02),
                  child: Container(
                      height: SizeConfig.screenHeight * .1,
                      width: SizeConfig.screenWidth * 9.04,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold(controller.dataUserInfoList1[0].maxRating.toString(), .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithBold('Max Rating', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold(controller1.dataUserInfoList2[0].maxRating.toString(), .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      )),
                ),


                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .03,
                      top: SizeConfig.screenHeight * .5+SizeConfig.screenHeight * .02),
                  child: Container(
                      height: SizeConfig.screenHeight * .1,
                      width: SizeConfig.screenWidth * 9.04,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('${controller.cal1.accuracy.toPrecision(2)}%', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithBold('Accuracy', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('${controller1.cal2.accuracy.toPrecision(2)}%', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .03,
                      top: SizeConfig.screenHeight * .6+SizeConfig.screenHeight * .02),
                  child: Container(
                      height: SizeConfig.screenHeight * .1,
                      width: SizeConfig.screenWidth * 9.04,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('${controller.cal1.triedProblem.length}', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithBold('Attempted', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('${controller1.cal2.triedProblem.length}', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .03,
                      top: SizeConfig.screenHeight * .7+SizeConfig.screenHeight * .02),
                  child: Container(
                      height: SizeConfig.screenHeight * .1,
                      width: SizeConfig.screenWidth * 9.04,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('${controller.cal1.solvedProblem.length}', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithBold('Solved', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('${controller1.cal2.solvedProblem.length}', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .03,
                      top: SizeConfig.screenHeight * .8+SizeConfig.screenHeight * .02),
                  child: Container(
                      height: SizeConfig.screenHeight * .1,
                      width: SizeConfig.screenWidth * 9.04,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('${controller.cal1.avgAttemp.toPrecision(2)}', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithBold('Average attempts per solution', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('${controller1.cal2.avgAttemp.toPrecision(2)}', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .03,
                      top: SizeConfig.screenHeight * .9+SizeConfig.screenHeight * .02),
                  child: Container(
                      height: SizeConfig.screenHeight * .1,
                      width: SizeConfig.screenWidth * 9.04,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('${controller.cal1.oneSubmit.toPrecision(2)}', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithBold('Solved With One Submission', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('${controller1.cal2.oneSubmit.toPrecision(2)}', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .03,
                      top: SizeConfig.screenHeight * 1+SizeConfig.screenHeight * .02),
                  child: Container(
                      height: SizeConfig.screenHeight * .1,
                      width: SizeConfig.screenWidth * 9.04,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('${controller.cCal1.totalContest}', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithBold('Contest Participated', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('${controller1.cCal2.totalContest}', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .03,
                      top: SizeConfig.screenHeight * 1.1+SizeConfig.screenHeight * .02),
                  child: Container(
                      height: SizeConfig.screenHeight * .1,
                      width: SizeConfig.screenWidth * 9.04,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('${controller.cCal1.bestRank}', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithBold('Best rank in world', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('${controller1.cCal2.bestRank}', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .03,
                      top: SizeConfig.screenHeight * 1.2+SizeConfig.screenHeight * .02),
                  child: Container(
                      height: SizeConfig.screenHeight * .1,
                      width: SizeConfig.screenWidth * 9.04,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('${controller.cCal1.worstRank}', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithBold('Worst rank in world', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('${controller1.cCal2.worstRank}', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      )),
                ),


              ],
            ),
          );
        }
      }),
    );
  }




}
