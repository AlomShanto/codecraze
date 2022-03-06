import 'package:codecraze/Screens/search_page.dart';
import 'package:codecraze/assistant/controller.dart';
import 'package:codecraze/assistant/reUsableContainer.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class SolvedProblemsList extends StatefulWidget {
  const SolvedProblemsList({Key? key}) : super(key: key);

  @override
  _SolvedProblemsListState createState() => _SolvedProblemsListState();
}

class _SolvedProblemsListState extends State<SolvedProblemsList> {

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
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Solved Problems of ${SearchPage.userId}',
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
                    itemCount: controller.cal.solvedProblemDetails.length,
                    itemBuilder: (context,index){
                      String key = controller.cal.solvedProblemDetails.keys.elementAt(controller.cal.solvedProblemDetails.length-index-1);
                      return Container(
                        height: SizeConfig.screenHeight*.1,
                        color: Colors.white,
                        child: Row(
                          children: [
                            reUse.containerWithoutBold(
                              '${controller.cal.solvedProblemDetails[key]!.name}',
                              .5,
                              0.0,
                              SizeConfig.screenHeight,
                              SizeConfig.screenWidth,
                            ),
                            reUse.containerWithoutBold(
                              '${controller.cal.solvedProblemDetails[key]!.rating.toString()}',
                              .2,
                              0.0,
                              SizeConfig.screenHeight,
                              SizeConfig.screenWidth,
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() async {
                                  num? cId=controller.cal.solvedProblemDetails[key]!.contestId;
                                  var ind=controller.cal.solvedProblemDetails[key]!.index;
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
}
