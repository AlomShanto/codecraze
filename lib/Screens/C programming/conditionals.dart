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
        ],
      )
    );
  }
}
