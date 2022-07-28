import 'package:codecraze/assistant/reUsableContainer.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/material.dart';

class Conditionals extends StatefulWidget {
  const Conditionals({Key? key}) : super(key: key);

  @override
  _ConditionalsState createState() => _ConditionalsState();
}

class _ConditionalsState extends State<Conditionals> {

  ReUsableContainer reUse = ReUsableContainer();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Conditionals'),
      ),
      body: ListView(
        children: [
          Container(
            height: SizeConfig.screenHeight*.1,
            padding: EdgeInsets.all(10),
            child: Text(
              'if-else',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
              ),
            ),
            decoration: reUse.boxDecoration(),
          ),
          Container(
            height: SizeConfig.screenHeight*.4,
            padding: EdgeInsets.all(10),
            child: Image.asset(
              'images/conditional.JPG',
              fit: BoxFit.fill,
            ),
            decoration: reUse.boxDecoration(),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            padding: EdgeInsets.all(10),
            child: Text(
              'if-elseif-else',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
              ),
            ),
            decoration: reUse.boxDecoration(),
          ),
          Container(
            height: SizeConfig.screenHeight*.4,
            padding: EdgeInsets.all(10),
            child: Image.asset(
              'images/conditional1.png',
              fit: BoxFit.fill,
            ),
            decoration: reUse.boxDecoration(),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            padding: EdgeInsets.all(10),
            child: Text(
              'if-else using switch',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
              ),
            ),
            decoration: reUse.boxDecoration(),
          ),
          Container(
            height: SizeConfig.screenHeight*.4,
            padding: EdgeInsets.all(10),
            child: Image.asset(
              'images/switch.png',
              fit: BoxFit.fill,
            ),
            decoration: reUse.boxDecoration(),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            padding: EdgeInsets.all(10),
            child: Text(
              'if-elseif-else using switch',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
              ),
            ),
            decoration: reUse.boxDecoration(),
          ),
          Container(
            height: SizeConfig.screenHeight*.4,
            padding: EdgeInsets.all(10),
            child: Image.asset(
              'images/switch1.png',
              fit: BoxFit.fill,
            ),
            decoration: reUse.boxDecoration(),
          ),
        ],
      )
    );
  }
}
