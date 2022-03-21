import 'package:codecraze/Screens/Statistics/SolvedProblems_page.dart';
import 'package:codecraze/Screens/Statistics/all_contests.dart';
import 'package:codecraze/Screens/Statistics/search_page.dart';
import 'package:codecraze/Screens/Statistics/submission_page.dart';
import 'package:codecraze/Screens/Statistics/unsolved_problems_page.dart';
import 'package:codecraze/assistant/controller.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  static String name = "";
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  final controller = Get.put(Controller());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getAllSubmissionsList();
    controller.getUserInfoList();
    controller.getContestInfoList();
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: Color(0xFFE5E3C9),
              height: SizeConfig.screenHeight * .15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                      'images/logo1.png',
                    height: 40,
                    width: 40,
                  ),
                  Text(
                    'More details of ${SearchPage.userId}',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF362706),fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                  Container(height: 15,)
                ],
              )
            ),
            ListTile(
              title: Text('All Submissions'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SubmissionPage()));
              },
            ),
            Divider(color: Color(0xFF789395),thickness: 2,),
            ListTile(
              title: Text('Solved Problems'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SolvedProblemsList()));
              },
            ),
            Divider(color: Color(0xFF789395),thickness: 2,),
            ListTile(
              title: Text('Attempted'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UnsolvedProblemsList()));
              },
            ),
            Divider(color: Color(0xFF789395),thickness: 2,),
            ListTile(
              title: Text('Contests'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AllContestDetails()));
              },
            ),
            Divider(color: Color(0xFF789395),thickness: 3,),
          ],
        ),
      ),
      appBar: AppBar(
        title: Obx((){
          if(controller.loadingUserInfoList.value || controller.dataUserInfoList.length == 0){
            return Text('');
          }
          else{
            StatisticsPage.name=controller.dataUserInfoList[0].firstName.toString()+" "+controller.dataUserInfoList[0].lastName.toString();
            return Text(StatisticsPage.name);
          }
        })
      ),
      body: Obx(() {
        if (controller.loadingUserInfoList.value ||
            controller.loadingSubmissionList.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (controller.dataUserInfoList.length == 0) {
          return Center(
            child: Text('User Not Found'),
          );
        } else {
          return SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: SizeConfig.screenHeight*.2,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: SizeConfig.screenWidth * .65),
                        child: Container(
                            height: SizeConfig.screenWidth * .35,
                            width: SizeConfig.screenWidth * .35,
                            child: Container(
                              padding: EdgeInsets.all(15),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  controller.dataUserInfoList[0].titlePhoto
                                      .toString(),
                                  // fit: BoxFit.fill,
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.grey.withOpacity(0.4),
                                //     spreadRadius: 1,
                                //     blurRadius: 7,
                                //     offset: const Offset(0, 0), // changes position of shadow
                                //   ),
                                // ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: SizeConfig.screenWidth * .35),
                        child: Container(
                            width: SizeConfig.screenWidth * .7,
                            height: SizeConfig.screenHeight * .05,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                getRank('${controller.dataUserInfoList[0].rank}'),
                                style: TextStyle(
                                  color: getColor(
                                      '${controller.dataUserInfoList[0].rank}'),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * .35,
                          top: SizeConfig.screenHeight * .05,
                        ),
                        child: Container(
                            width: SizeConfig.screenWidth * .65,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                '${SearchPage.userId}',
                                style: TextStyle(
                                  color: getColor(
                                      '${controller.dataUserInfoList[0].rank}'),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  // fontStyle: FontStyle.italic,
                                ),
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * .35,
                          top: SizeConfig.screenHeight * .1,
                        ),
                        child: Container(
                            width: SizeConfig.screenWidth * .5,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Max Rating',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  // fontStyle: FontStyle.italic,
                                ),
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * .35,
                          top: SizeConfig.screenHeight * .14,
                        ),
                        child: Container(
                            width: SizeConfig.screenWidth * .5,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Current Rating',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  // fontStyle: FontStyle.italic,
                                ),
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * .7,
                            top: SizeConfig.screenHeight * .1,
                        ),
                        child: Container(
                            width: SizeConfig.screenWidth * .5,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                ': ${controller.dataUserInfoList[0].maxRating}',
                                style: TextStyle(
                                    color: getColor(
                                        '${controller.dataUserInfoList[0].maxRank}'),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * .7,
                            top: SizeConfig.screenHeight * .14,
                        ),
                        child: Container(
                            width: SizeConfig.screenWidth * .5,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                ': ${controller.dataUserInfoList[0].rating}',
                                style: TextStyle(
                                    color: getColor(
                                        '${controller.dataUserInfoList[0].rank}'),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                            )),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .1,
                      top: SizeConfig.screenHeight * .25),
                  child: Container(
                      height: SizeConfig.screenWidth * .08,
                      width: SizeConfig.screenWidth * .8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text('Accuracy'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.screenWidth * .05),
                            child: Text(
                                '${controller.cal.accuracy.toPrecision(2)}%'),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .1,
                      right: SizeConfig.screenWidth * .12,
                      top: SizeConfig.screenHeight * .31),
                  child: Container(
                    height: 2,
                    color: Colors.white,
                  )
                ),

                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .1,
                      top: SizeConfig.screenHeight * .32),
                  child: Container(
                      height: SizeConfig.screenWidth * .08,
                      width: SizeConfig.screenWidth * .8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text('Attempted'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.screenWidth * .05),
                            child:
                                Text('${controller.cal.triedProblem.length}'),
                          ),
                        ],
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * .1,
                        right: SizeConfig.screenWidth * .12,
                        top: SizeConfig.screenHeight * .38),
                    child: Container(
                      height: 2,
                      color: Colors.white,
                    )
                ),

                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .1,
                      top: SizeConfig.screenHeight * .39),
                  child: Container(
                      height: SizeConfig.screenWidth * .08,
                      width: SizeConfig.screenWidth * .8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text('Solved'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.screenWidth * .05),
                            child:
                                Text('${controller.cal.solvedProblem.length}'),
                          ),
                        ],
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * .1,
                        right: SizeConfig.screenWidth * .12,
                        top: SizeConfig.screenHeight * .45),
                    child: Container(
                      height: 2,
                      color: Colors.white,
                    )
                ),

                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .1,
                      top: SizeConfig.screenHeight * .46),
                  child: Container(
                      height: SizeConfig.screenWidth * .08,
                      width: SizeConfig.screenWidth * .8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text('Average attempts per solution'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.screenWidth * .05),
                            child: Text(
                                '${controller.cal.avgAttemp.toPrecision(2)}'),
                          ),
                        ],
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * .1,
                        right: SizeConfig.screenWidth * .12,
                        top: SizeConfig.screenHeight * .52),
                    child: Container(
                      height: 2,
                      color: Colors.white,
                    )
                ),

                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .1,
                      top: SizeConfig.screenHeight * .53),
                  child: Container(
                      height: SizeConfig.screenWidth * .08,
                      width: SizeConfig.screenWidth * .8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text('Solved with one submission'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.screenWidth * .05),
                            child: Text(
                                '${controller.cal.oneSubmit.toPrecision(2)}%'),
                          ),
                        ],
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * .1,
                        right: SizeConfig.screenWidth * .12,
                        top: SizeConfig.screenHeight * .59),
                    child: Container(
                      height: 2,
                      color: Colors.white,
                    )
                ),

                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .1,
                      top: SizeConfig.screenHeight * .60),
                  child: Container(
                      height: SizeConfig.screenWidth * .08,
                      width: SizeConfig.screenWidth * .8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text('Contest Participated'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.screenWidth * .05),
                            child: Text('${controller.cCal.totalContest}'),
                          ),
                        ],
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * .1,
                        right: SizeConfig.screenWidth * .12,
                        top: SizeConfig.screenHeight * .66),
                    child: Container(
                      height: 2,
                      color: Colors.white,
                    )
                ),

                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .1,
                      top: SizeConfig.screenHeight * .67),
                  child: Container(
                      height: SizeConfig.screenWidth * .08,
                      width: SizeConfig.screenWidth * .8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text('Best rank in world'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.screenWidth * .05),
                            child: Text('${controller.cCal.bestRank}'),
                          ),
                        ],
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * .1,
                        right: SizeConfig.screenWidth * .12,
                        top: SizeConfig.screenHeight * .73),
                    child: Container(
                      height: 2,
                      color: Colors.white,
                    )
                ),

                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * .1,
                      top: SizeConfig.screenHeight * .74),
                  child: Container(
                      height: SizeConfig.screenWidth * .08,
                      width: SizeConfig.screenWidth * .8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text('Worst rank in world'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.screenWidth * .05),
                            child: Text('${controller.cCal.worstRank}'),
                          ),
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

  String getRank(String str) {
    if (str == "specialist") {
      return "Specialist";
    } else if (str == "legendary grandmaster") {
      return "Legendary grandmaster";
    } else if (str == "international grandmaster") {
      return "International grandmaster";
    } else if (str == "grandmaster") {
      return "Grandmaster";
    } else if (str == "international master") {
      return "International master";
    } else if (str == "master") {
      return "Master";
    } else if (str == "candidate master") {
      return "Candidate master";
    } else if (str == "expert") {
      return "Expert";
    } else if (str == "pupil") {
      return "Pupil";
    } else {
      return "Newbie";
    }
  }

  Color getColor(String str) {
    if (str == "specialist") {
      return Colors.cyan;
    } else if (str == "legendary grandmaster" ||
        str == "international grandmaster" ||
        str == "grandmaster") {
      return Colors.red;
    } else if (str == "international master" || str == "master") {
      return Colors.amber;
    } else if (str == "candidate master") {
      return Colors.purple;
    } else if (str == "expert") {
      return Color(0xff0558f2);
    } else if (str == "pupil") {
      return Colors.green;
    } else {
      return Colors.grey;
    }
  }
}
