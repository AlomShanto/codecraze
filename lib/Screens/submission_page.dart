import 'package:codecraze/Screens/search_page.dart';
import 'package:codecraze/assistant/controller.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:codecraze/assistant/reUsableContainer.dart';

class SubmissionPage extends StatefulWidget {
  const SubmissionPage({Key? key}) : super(key: key);

  @override
  _SubmissionPageState createState() => _SubmissionPageState();
}

class _SubmissionPageState extends State<SubmissionPage> {

  final controller = Get.put(Controller());
  var reUse = ReUsableContainer();

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
          'Submissions of ${SearchPage.userId}',
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
                        .4,
                        0.0,
                        SizeConfig.screenHeight,
                        SizeConfig.screenWidth,
                      ),
                      reUse.containerWithBold(
                        'Programming Language',
                        .3,
                        0.0,
                        SizeConfig.screenHeight,
                        SizeConfig.screenWidth,
                      ),
                      reUse.containerWithBold(
                        'Verdict',
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
                    itemCount: controller.dataSubmissionList.length,
                    itemBuilder: (context,index){
                      print(controller.dataSubmissionList[index].programmingLanguage);
                      return Container(
                        height: SizeConfig.screenHeight*.1,
                        color: Colors.white,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() async {
                                  num? cId=controller.dataSubmissionList[index].problem!.contestId;
                                  var ind=controller.dataSubmissionList[index].problem!.index;
                                  print(ind);
                                  String  url = "https://codeforces.com/contest/"+cId.toString()+"/problem/"+ind.toString();
                                  print(url);
                                  if (await canLaunch(url) != null) {
                                    await launch(url);
                                  }
                                });
                              },
                              child: reUse.containerWithUnderlinedText(
                                '${controller.dataSubmissionList[index].problem!.name}',
                                0.4,
                                0,
                                SizeConfig.screenHeight,
                                SizeConfig.screenWidth
                              ),
                            ),
                            reUse.containerWithoutBold(
                              '${controller.dataSubmissionList[index].programmingLanguage}',
                              .3,
                              0.0,
                              SizeConfig.screenHeight,
                              SizeConfig.screenWidth,
                            ),
                            reUse.containerForVerdict(
                              '${controller.dataSubmissionList[index].verdict}',
                              .3,
                              2.0,
                              SizeConfig.screenHeight,
                              SizeConfig.screenWidth,
                            ),
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
