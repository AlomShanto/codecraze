import 'package:codecraze/assistant/reUsableContainer.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/material.dart';

class HeaderFiles extends StatefulWidget {
  const HeaderFiles({Key? key}) : super(key: key);

  @override
  _HeaderFilesState createState() => _HeaderFilesState();
}

class _HeaderFilesState extends State<HeaderFiles> {
  
  ReUsableContainer reUse= ReUsableContainer();
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Header files'),
      ),
      body: ListView(
        children: [
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithBold('SL   No', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithBold('Name', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithBold('Description', .6, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('1', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('stdio.h', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('Input/Output functions', .6, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('2', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('conio.h', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('Console Input/Output functions', .6, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('3', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('stdlib.h', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('General utility functions', .6, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('4', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('math.h', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('Mathematics functions', .6, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('5', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('string.h', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('String functions', .6, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('6', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('ctype.h', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('Character handling functions', .6, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('7', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('time.h', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('Date and time functions', .6, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('8', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('float.h', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('Limits of float types', .6, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('9', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('limits.h', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('Size of basic types', .6, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('10', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('wctype.h', .3, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('Functions to determine the type contained in wide character data.', .6, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
