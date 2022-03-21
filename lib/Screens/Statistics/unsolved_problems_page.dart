import 'package:codecraze/assistant/controller.dart';
import 'package:codecraze/assistant/reUsableContainer.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import 'search_page.dart';

class UnsolvedProblemsList extends StatefulWidget {
  const UnsolvedProblemsList({Key? key}) : super(key: key);

  @override
  _UnsolvedProblemsListState createState() => _UnsolvedProblemsListState();
}

class _UnsolvedProblemsListState extends State<UnsolvedProblemsList> {
  final controller = Get.put(Controller());
  ReUsableContainer reUse=ReUsableContainer();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getAllSubmissionsList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Attempted Problems of ${SearchPage.userId}',
        ),
      ),
      body: Obx((){
        if(controller.loadingSubmissionList.value){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else if(controller.dataSubmissionList.length==0){
          return Center(
            child: Text('User Not Found'),
          );
        }
        else{
          return Container(
            child: Stack(
              children: [
                Container(
                  height: SizeConfig.screenHeight*.1,
                  child: Row(
                    children: [
                      reUse.containerWithBold(
                        'Problem Name',
                        .5,
                        0.0,
                        SizeConfig.screenHeight,
                        SizeConfig.screenWidth,
                      ),
                      reUse.containerWithBold(
                        'Rating',
                        .2,
                        0.0,
                        SizeConfig.screenHeight,
                        SizeConfig.screenWidth,
                      ),
                      reUse.containerWithBold(
                        'See more in Codeforces',
                        .3,
                        0.0,
                        SizeConfig.screenHeight,
                        SizeConfig.screenWidth,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF789395),
                        spreadRadius: 2,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: SizeConfig.screenHeight*.1+2),
                  child: ListView.builder(
                    itemCount: controller.cal.unSolvedProblemDetails.length,
                    itemBuilder: (context,index){
                      String key = controller.cal.unSolvedProblemDetails.keys.elementAt(controller.cal.unSolvedProblemDetails.length-index-1);
                      return Container(
                        height: SizeConfig.screenHeight*.1,
                        color: Colors.white,
                        child: Row(
                          children: [
                            reUse.containerWithoutBold(
                              '${controller.cal.unSolvedProblemDetails[key]!.name}',
                              .5,
                              0.0,
                              SizeConfig.screenHeight,
                              SizeConfig.screenWidth,
                            ),
                            reUse.containerWithoutBold(
                              '${controller.cal.unSolvedProblemDetails[key]!.rating.toString()}',
                              .2,
                              0.0,
                              SizeConfig.screenHeight,
                              SizeConfig.screenWidth,
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() async {
                                  num? cId=controller.cal.unSolvedProblemDetails[key]!.contestId;
                                  var ind=controller.cal.unSolvedProblemDetails[key]!.index;
                                  print(ind);
                                  String  url = "https://codeforces.com/contest/"+cId.toString()+"/problem/"+ind.toString();
                                  print(url);
                                  if (await canLaunch(url) != null) {
                                    await launch(url);
                                  }
                                });
                              },
                              child: reUse.containerWithUnderlinedText(
                                'Details',
                                .3,
                                0.0,
                                SizeConfig.screenHeight,
                                SizeConfig.screenWidth,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        }
      }),
    );
  }
  Container _container(String x, double size, double d){
    return Container(
      height: SizeConfig.screenHeight*.1,
      width: SizeConfig.screenWidth*size-d,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
          )
        ],
      ),
      child: Center(child: Text(x,textAlign: TextAlign.center,)),
    );
  }
  Container _container1(String x, double size, double d){
    return Container(
      height: SizeConfig.screenHeight*.1,
      width: SizeConfig.screenWidth*size-d,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
          )
        ],
      ),
      child: Center(
          child: Text(
            x,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
      ),
    );
  }
}
