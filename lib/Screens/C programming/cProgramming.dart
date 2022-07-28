import 'package:codecraze/Screens/C%20programming/Introduction.dart';
import 'package:codecraze/Screens/C%20programming/array.dart';
import 'package:codecraze/Screens/C%20programming/conditionals.dart';
import 'package:codecraze/Screens/C%20programming/data_types.dart';
import 'package:codecraze/Screens/C%20programming/header_files.dart';
import 'package:codecraze/Screens/C%20programming/input_output.dart';
import 'package:codecraze/Screens/C%20programming/loops.dart';
import 'package:codecraze/Screens/C%20programming/strings.dart';
import 'package:codecraze/assistant/reUsableCard.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/material.dart';

import 'function.dart';

class BasicProgramming extends StatefulWidget {
  const BasicProgramming({Key? key}) : super(key: key);

  @override
  _BasicProgrammingState createState() => _BasicProgrammingState();
}

class _BasicProgrammingState extends State<BasicProgramming> {

  ReUsableCard card = ReUsableCard();
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Basic C',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.screenWidth*.15, right: SizeConfig.screenWidth*.15,top: 20,bottom: 10),
            child: Container(
              height: SizeConfig.screenHeight*.1,
              child: GestureDetector(
                child: card.reUsableCard('Introduction'),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Introduction())
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.screenWidth*.15, right: SizeConfig.screenWidth*.15,top: 10,bottom: 10),
            child: Container(
              height: SizeConfig.screenHeight*.1,
              child: GestureDetector(
                child: card.reUsableCard('Header Files'),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>HeaderFiles())
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.screenWidth*.15, right: SizeConfig.screenWidth*.15,top: 10,bottom: 10),
            child: Container(
              height: SizeConfig.screenHeight*.1,
              child: GestureDetector(
                child: card.reUsableCard('Data Types'),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>DataTypes())
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.screenWidth*.15, right: SizeConfig.screenWidth*.15,top: 10,bottom: 10),
            child: Container(
              height: SizeConfig.screenHeight*.1,
              child: GestureDetector(
                child: card.reUsableCard('Input/Output'),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>InputOutput())
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.screenWidth*.15, right: SizeConfig.screenWidth*.15,top: 10,bottom: 10),
            child: Container(
              height: SizeConfig.screenHeight*.1,
              child: GestureDetector(
                child: card.reUsableCard('Conditionals'),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Conditionals())
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.screenWidth*.15, right: SizeConfig.screenWidth*.15,top: 10,bottom: 10),
            child: Container(
              height: SizeConfig.screenHeight*.1,
              child: GestureDetector(
                child: card.reUsableCard('Loops'),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Loops())
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.screenWidth*.15, right: SizeConfig.screenWidth*.15,top: 10,bottom: 10),
            child: Container(
              height: SizeConfig.screenHeight*.1,
              child: GestureDetector(
                child: card.reUsableCard('Array'),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Array())
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.screenWidth*.15, right: SizeConfig.screenWidth*.15,top: 10,bottom: 10),
            child: Container(
              height: SizeConfig.screenHeight*.1,
              child: GestureDetector(
                child: card.reUsableCard('String'),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Strings())
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.screenWidth*.15, right: SizeConfig.screenWidth*.15,top: 10,bottom: 10),
            child: Container(
              height: SizeConfig.screenHeight*.1,
              child: GestureDetector(
                child: card.reUsableCard('Functions'),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Functions())
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
