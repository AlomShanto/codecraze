import 'package:codecraze/assistant/reUsableCard.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/material.dart';

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
          GestureDetector(
            child: card.reUsableCard('Header Files'),
          )
        ],
      ),
    );
  }
}
