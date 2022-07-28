import 'package:codecraze/Screens/Compare/comparing_page.dart';
import 'package:codecraze/Screens/Statistics/search_page.dart';
import 'package:codecraze/Screens/Statistics/statistics_page.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Compare extends StatefulWidget {
  const Compare({Key? key}) : super(key: key);
  static String userId1="";
  static String userId2="";

  @override
  _CompareState createState() => _CompareState();
}

class _CompareState extends State<Compare> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Compare two user',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              // fontStyle: FontStyle.italic,
              // color: Colors.red,
            ),
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight*.1,left: SizeConfig.screenWidth*.15),
              child: Container(
                height: SizeConfig.screenHeight*.7,
                width: SizeConfig.screenWidth*.7,
                child: Center(
                    child: Container(
                        height: SizeConfig.screenHeight*.45,
                        width: SizeConfig.screenWidth*.7,
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(SizeConfig.screenWidth*.05),
                                child: Container(
                                  height: SizeConfig.screenHeight*.1,
                                  width: SizeConfig.screenWidth*.7,
                                  child: TextField(
                                    style: TextStyle(
                                        color: Color(0xFF362706)
                                    ),
                                    controller: _controller,
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                          color: Colors.grey
                                      ),
                                      labelStyle: TextStyle(
                                          color: Colors.black
                                      ),
                                      labelText: 'Input handle 1',
                                      hintText: 'Alom_Shanto',
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(SizeConfig.screenWidth*.05),
                                child: Container(
                                  height: SizeConfig.screenHeight*.1,
                                  width: SizeConfig.screenWidth*.7,
                                  child: TextField(
                                    style: TextStyle(
                                        color: Color(0xFF362706)
                                    ),
                                    controller: _controller1,
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                          color: Colors.grey
                                      ),
                                      labelStyle: TextStyle(
                                          color: Colors.black
                                      ),
                                      labelText: 'Input handle 2',
                                      hintText: 'Nowshin_S',
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                  onPressed: (){
                                    Compare.userId1=_controller.text;
                                    Compare.userId2=_controller1.text;
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=>ComparePage())
                                    );
                                  },
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                              ),
                            ],
                          ),
                        )
                    )
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                    )
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
