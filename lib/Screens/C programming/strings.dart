import 'package:codecraze/assistant/reUsableContainer.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Strings extends StatefulWidget {
  const Strings({Key? key}) : super(key: key);

  @override
  _StringsState createState() => _StringsState();
}

class _StringsState extends State<Strings> {
  @override
  ReUsableContainer reUse = ReUsableContainer();

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('String'),
        ),
        body: ListView(
          children: [
            Container(
              height: SizeConfig.screenHeight*.1,
              padding: EdgeInsets.all(10),
              child: Text(
                'Input and output',
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
                'images/string.png',
                fit: BoxFit.fill,
              ),
              decoration: reUse.boxDecoration(),
            ),
            Container(
              height: SizeConfig.screenHeight*.1,
              padding: EdgeInsets.all(10),
              child: Text(
                'Finding length of a string',
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
                'images/string1.png',
                fit: BoxFit.fill,
              ),
              decoration: reUse.boxDecoration(),
            ),
            Container(
              height: SizeConfig.screenHeight*.1,
              padding: EdgeInsets.all(10),
              child: Text(
                'Printing all character of a string',
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
                'images/string2.png',
                fit: BoxFit.fill,
              ),
              decoration: reUse.boxDecoration(),
            ),
          ],
        )
    );
  }
}
