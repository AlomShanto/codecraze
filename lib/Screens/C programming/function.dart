import 'package:codecraze/assistant/reUsableContainer.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Functions extends StatefulWidget {
  const Functions({Key? key}) : super(key: key);

  @override
  _FunctionsState createState() => _FunctionsState();
}

class _FunctionsState extends State<Functions> {
  @override
  ReUsableContainer reUse = ReUsableContainer();

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Functions'),
        ),
        body: ListView(
          children: [
            Container(
              height: SizeConfig.screenHeight*.4,
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'images/functions.png',
                fit: BoxFit.fill,
              ),
              decoration: reUse.boxDecoration(),
            ),
          ],
        )
    );
  }
}
