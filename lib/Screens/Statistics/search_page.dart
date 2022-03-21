import 'package:codecraze/Screens/Statistics/statistics_page.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);
  static String userId="";

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CodeCraze',
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
            padding: EdgeInsets.only(top: SizeConfig.screenHeight*.3,left: SizeConfig.screenWidth*.15),
            child: Container(
                height: SizeConfig.screenHeight*.25,
                width: SizeConfig.screenWidth*.7,
              child: Center(
                child: Container(
                  height: SizeConfig.screenHeight*.24,
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
                                labelText: 'Input a handle',
                                hintText: 'Alom_Shanto',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: (){
                              SearchPage.userId=_controller.text;
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>StatisticsPage())
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
