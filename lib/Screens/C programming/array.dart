import 'package:codecraze/assistant/reUsableContainer.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Array extends StatefulWidget {
  const Array({Key? key}) : super(key: key);

  @override
  _ArrayState createState() => _ArrayState();
}

class _ArrayState extends State<Array> {
  @override
  ReUsableContainer reUse = ReUsableContainer();

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Array'),
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
                'images/array.png',
                fit: BoxFit.fill,
              ),
              decoration: reUse.boxDecoration(),
            ),
          ],
        )
    );
  }
}
