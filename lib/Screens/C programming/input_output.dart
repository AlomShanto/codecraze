import 'package:codecraze/assistant/reUsableContainer.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/material.dart';

class InputOutput extends StatefulWidget {
  const InputOutput({Key? key}) : super(key: key);

  @override
  _InputOutputState createState() => _InputOutputState();
}

class _InputOutputState extends State<InputOutput> {
  
  ReUsableContainer reUse = new ReUsableContainer();
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('C Input/Output',),
      ),
      body: ListView(
        children: [
          Container(
            height: SizeConfig.screenHeight*.1,
            padding: EdgeInsets.all(10),
            child: Text(
              'Input',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline
              ),
            ),
          ),
          Container(
              height: SizeConfig.screenHeight*.1,
              child: Row(
                children: [
                  reUse.containerWithBold('Data Type', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                  reUse.containerWithBold('How to Input\n scanf("format specifier",&variable name);', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                ],
              ),
              decoration: reUse.boxDecoration()
          ),
          Container(
            height: SizeConfig.screenHeight*.3,
            child: ListView(
              children: [
                Container(
                  height: SizeConfig.screenHeight*.1,
                  child: Row(
                    children: [
                      reUse.containerWithoutBold('int', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                      reUse.containerWithoutBold('scanf("%d", &variableName);', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                    ],
                  ),
                  decoration: reUse.boxDecoration()
                ),
                Container(
                  height: SizeConfig.screenHeight*.1,
                  child: Row(
                    children: [
                      reUse.containerWithoutBold('long long int', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                      reUse.containerWithoutBold('scanf("%lld", &variableName);', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                    ],
                  ),
                  decoration: reUse.boxDecoration()
                ),
                Container(
                  height: SizeConfig.screenHeight*.1,
                  child: Row(
                    children: [
                      reUse.containerWithoutBold('float', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                      reUse.containerWithoutBold('scanf("%f", &variableName);', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                    ],
                  ),
                  decoration: reUse.boxDecoration()
                ),
                Container(
                  height: SizeConfig.screenHeight*.1,
                  child: Row(
                    children: [
                      reUse.containerWithoutBold('double', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                      reUse.containerWithoutBold('scanf("%lf", &variableName);', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                    ],
                  ),
                  decoration: reUse.boxDecoration()
                ),
                Container(
                  height: SizeConfig.screenHeight*.1,
                  child: Row(
                    children: [
                      reUse.containerWithoutBold('char', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                      reUse.containerWithoutBold('scanf("%c", &variableName);', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                    ],
                  ),
                  decoration: reUse.boxDecoration()
                ),
                Container(
                  height: SizeConfig.screenHeight*.1,
                  child: Row(
                    children: [
                      reUse.containerWithoutBold('string', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                      reUse.containerWithoutBold('scanf("%s", &variableName);', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                    ],
                  ),
                  decoration: reUse.boxDecoration()
                ),
              ],
            ),
            decoration: reUse.boxDecoration()
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            padding: EdgeInsets.all(10),
            child: Text(
              'Output',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
              ),
            ),
          ),
          Container(
              height: SizeConfig.screenHeight*.1,
              child: Row(
                children: [
                  reUse.containerWithBold('Data Type', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                  reUse.containerWithBold('How to Output\n printf("format specifier",variable name);', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                ],
              ),
              decoration: reUse.boxDecoration()
          ),
          Container(
              height: SizeConfig.screenHeight*.3,
              child: ListView(
                children: [
                  Container(
                      height: SizeConfig.screenHeight*.1,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('Any text with new line', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('printf("text to print\\n");', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      ),
                      decoration: reUse.boxDecoration()
                  ),
                  Container(
                      height: SizeConfig.screenHeight*.1,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('Any text without new line', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('printf("text to print");', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      ),
                      decoration: reUse.boxDecoration()
                  ),
                  Container(
                      height: SizeConfig.screenHeight*.1,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('int', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('printf("%d", variableName);', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      ),
                      decoration: reUse.boxDecoration()
                  ),
                  Container(
                      height: SizeConfig.screenHeight*.1,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('long long int', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('printf("%lld", variableName);', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      ),
                      decoration: reUse.boxDecoration()
                  ),
                  Container(
                      height: SizeConfig.screenHeight*.1,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('float', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('printf("%f", variableName);', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      ),
                      decoration: reUse.boxDecoration()
                  ),
                  Container(
                      height: SizeConfig.screenHeight*.1,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('double', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('printf("%lf", variableName);', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      ),
                      decoration: reUse.boxDecoration()
                  ),
                  Container(
                      height: SizeConfig.screenHeight*.1,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('char', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('printf("%c", variableName);', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      ),
                      decoration: reUse.boxDecoration()
                  ),
                  Container(
                      height: SizeConfig.screenHeight*.1,
                      child: Row(
                        children: [
                          reUse.containerWithoutBold('string', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                          reUse.containerWithoutBold('printf("%s", variableName);', .7, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                        ],
                      ),
                      decoration: reUse.boxDecoration()
                  ),
                ],
              ),
              decoration: reUse.boxDecoration()
          ),
        ],
      ),
    );
  }
}
