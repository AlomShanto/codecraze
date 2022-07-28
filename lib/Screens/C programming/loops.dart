import 'package:codecraze/assistant/reUsableContainer.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loops extends StatefulWidget {
  const Loops({Key? key}) : super(key: key);

  @override
  _LoopsState createState() => _LoopsState();
}

class _LoopsState extends State<Loops> {
  @override

  ReUsableContainer reUse = ReUsableContainer();

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Loops'),
        ),
        body: ListView(
          children: [
            Container(
              height: SizeConfig.screenHeight*.1,
              padding: EdgeInsets.all(10),
              child: Text(
                'For Loop',
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
                'images/loop.png',
                fit: BoxFit.fill,
              ),
              decoration: reUse.boxDecoration(),
            ),
            Container(
              height: SizeConfig.screenHeight*.1,
              padding: EdgeInsets.all(10),
              child: Text(
                'While Loop',
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
                'images/loop1.png',
                fit: BoxFit.fill,
              ),
              decoration: reUse.boxDecoration(),
            ),
            Container(
              height: SizeConfig.screenHeight*.1,
              padding: EdgeInsets.all(10),
              child: Text(
                'Do while',
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
                'images/loop2.png',
                fit: BoxFit.fill,
              ),
              decoration: reUse.boxDecoration(),
            ),
            Container(
              height: SizeConfig.screenHeight*.1,
              padding: EdgeInsets.all(10),
              child: Text(
                'nested loop',
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
                'images/nestedloop.png',
                fit: BoxFit.fill,
              ),
              decoration: reUse.boxDecoration(),
            ),
          ],
        )
    );
  }
}
