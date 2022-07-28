import 'package:codecraze/assistant/controller.dart';
import 'package:codecraze/assistant/reUsableContainer.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class UpComingContestPage extends StatefulWidget {
  const UpComingContestPage({Key? key}) : super(key: key);

  @override
  _UpComingContestPageState createState() => _UpComingContestPageState();
}

class _UpComingContestPageState extends State<UpComingContestPage> {
  final controller = Get.put(Controller());

  ReUsableContainer reUse = new ReUsableContainer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getContestIList();
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Upcoming Contest'),
            ],
          )
      ),
      body: Obx(() {
        if (controller.loadingContestList.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (controller.dataContestList.length == 0) {
          return Center(
            child: Text('No Upcoming Contests'),
          );
        } else {
          return Container(
            child: Stack(
              children: [
                Container(
                  height: SizeConfig.screenHeight * .1,
                  child: Row(
                    children: [
                      reUse.containerWithBold(
                        'Contest name',
                        .5,
                        0.0,
                        SizeConfig.screenHeight,
                        SizeConfig.screenWidth,
                      ),
                      reUse.containerWithBold(
                        'Remaining Days to start',
                        .5,
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
                  padding: EdgeInsets.only(
                      top: SizeConfig.screenHeight * .1),
                  child: ListView.builder(
                    itemCount: controller.uCon.Upcoming.length,
                    itemBuilder: (context, index) {
                      String key = controller.uCon.Upcoming.keys.elementAt(
                          controller.uCon.Upcoming.length-index-1);
                      print(controller.uCon.Upcoming.length);
                      return Container(
                        height: SizeConfig.screenHeight * .1,
                        color: Colors.white,
                        child: Row(
                          children: [
                            reUse.containerWithoutBold(
                              key,
                              .5,
                              0.0,
                              SizeConfig.screenHeight,
                              SizeConfig.screenWidth,
                            ),
                            reUse.containerWithoutBold(
                              '${controller.uCon.Upcoming[key]!.day.toInt()}' +
                                  " Days ",
                              .5,
                              0.0,
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

