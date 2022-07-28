import 'package:codecraze/Screens/C%20programming/cProgramming.dart';
import 'package:codecraze/Screens/Compare/search_compare_page.dart';
import 'package:codecraze/Screens/Statistics/search_page.dart';
import 'package:codecraze/Screens/upcoming_contest.dart';
import 'package:codecraze/assistant/reUsableCard.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ReUsableCard card = ReUsableCard();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/logo1.png'),
        title: Text(
          'CodeCraze',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.screenWidth*.15,
              right: SizeConfig.screenWidth*.15,
              bottom: 20,
            ),
            child: Container(
              height: SizeConfig.screenHeight*.1,
              child: GestureDetector(
                child: card.reUsableCard('Codeforces User Statistics'),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>SearchPage())
                  );
                },
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.screenWidth*.15,
              right: SizeConfig.screenWidth*.15,
              bottom: 20,
            ),
            child: Container(
                height: SizeConfig.screenHeight*.1,
                child: GestureDetector(
                  child: card.reUsableCard('Upcoming Codeforces contest'),
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>UpComingContestPage())
                    );
                  },
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.screenWidth*.15,
              right: SizeConfig.screenWidth*.15,
              bottom: 20,
            ),
            child: Container(
              height: SizeConfig.screenHeight*.1,
              child: GestureDetector(
                child: card.reUsableCard('Codeforces User Compare'),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Compare())
                  );
                },
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.screenWidth*.15,
              right: SizeConfig.screenWidth*.15,
              bottom: 20,
            ),
            child: Container(
              height: SizeConfig.screenHeight*.1,
              child: GestureDetector(
                child: card.reUsableCard('Basic C Language'),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>BasicProgramming())
                  );
                },
              )
            ),
          ),
        ],
      ),
    );
  }
}
