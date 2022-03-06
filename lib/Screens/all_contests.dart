import 'package:codecraze/Screens/search_page.dart';
import 'package:codecraze/assistant/controller.dart';
import 'package:codecraze/assistant/reUsableContainer.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class AllContestDetails extends StatefulWidget {
  const AllContestDetails({Key? key}) : super(key: key);

  @override
  _AllContestDetailsState createState() => _AllContestDetailsState();
}

class _AllContestDetailsState extends State<AllContestDetails> {

  final controller = Get.put(Controller());
  ReUsableContainer reUse=ReUsableContainer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getContestInfoList();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contests of ${SearchPage.userId}',
        ),
      ),
      body: Obx((){
        if(controller.loadingContestInfoList.value){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else if(controller.dataContestInfoList.length==0){
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
                        'Contest Name',
                        .4,
                        0.0,
                        SizeConfig.screenHeight,
                        SizeConfig.screenWidth,
                      ),
                      reUse.containerWithBold(
                        'Rank',
                        .15,
                        0.0,
                        SizeConfig.screenHeight,
                        SizeConfig.screenWidth,
                      ),
                      reUse.containerWithBold(
                        'Old Rating',
                        .15,
                        0.0,
                        SizeConfig.screenHeight,
                        SizeConfig.screenWidth,
                      ),
                      reUse.containerWithBold(
                        'New Rating',
                        .15,
                        0.0,
                        SizeConfig.screenHeight,
                        SizeConfig.screenWidth,
                      ),
                      reUse.containerWithBold(
                        'Rating Change',
                        .15,
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
                    itemCount: controller.dataContestInfoList.length,
                    itemBuilder: (context,index){
                      int ind = controller.dataContestInfoList.length-index-1;
                      return Container(
                        height: SizeConfig.screenHeight*.1,
                        color: Colors.green,
                        child: Row(
                          children: [
                            GestureDetector(
                              child: reUse.containerWithUnderlinedText(
                                '${controller.dataContestInfoList[ind].contestName}',
                                .4,
                                0.0,
                                SizeConfig.screenHeight,
                                SizeConfig.screenWidth,
                              ),
                              onTap: (){
                                setState(() async {
                                  num cId=controller.dataContestInfoList[ind].contestId;
                                  String  url = "https://codeforces.com/contest/"+cId.toString();
                                  print(url);
                                  if (await canLaunch(url) != null) {
                                    await launch(url);
                                  }
                                });
                              },
                            ),
                            reUse.containerWithoutBold(
                              '${controller.dataContestInfoList[ind].rank}',
                              .15,
                              0.0,
                              SizeConfig.screenHeight,
                              SizeConfig.screenWidth,
                            ),
                            reUse.containerWithoutBold(
                              '${controller.dataContestInfoList[ind].oldRating}',
                              .15,
                              0.0,
                              SizeConfig.screenHeight,
                              SizeConfig.screenWidth,
                            ),
                            reUse.containerWithoutBold(
                              '${controller.dataContestInfoList[ind].newRating}',
                              .15,
                              0.0,
                              SizeConfig.screenHeight,
                              SizeConfig.screenWidth,
                            ),
                            reUse.containerWithoutBold(
                              '${controller.dataContestInfoList[ind].newRating-controller.dataContestInfoList[ind].oldRating}',
                              .15,
                              0.0,
                              SizeConfig.screenHeight,
                              SizeConfig.screenWidth,
                            ),
                          ],
                        ),
                      );
                    },
                  )
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
