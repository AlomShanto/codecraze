import 'package:codecraze/assistant/reUsableContainer.dart';
import 'package:codecraze/assistant/size_config.dart';
import 'package:flutter/material.dart';

class DataTypes extends StatefulWidget {
  const DataTypes({Key? key}) : super(key: key);

  @override
  _DataTypesState createState() => _DataTypesState();
}

class _DataTypesState extends State<DataTypes> {

  ReUsableContainer reUse= ReUsableContainer();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Data types'),
      ),
      body: ListView(
        children: [
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithBold('SL   No', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithBold('Type', .45, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithBold('Size   (Bytes)', .2, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithBold('Format Specifier', .25, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('1', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('short int', .45, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('2', .2, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('%hd', .25, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('2', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('unsigned short int', .45, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('2', .2, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('%hu', .25, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('3', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('unsigned int', .45, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('4', .2, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('%u', .25, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('4', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('int', .45, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('4', .2, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('%d', .25, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('5', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('long int', .45, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('4', .2, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('%ld', .25, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('6', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('unsigned long int', .45, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('4', .2, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('%lu', .25, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('7', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('long long int', .45, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('8', .2, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('%lld', .25, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('8', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('unsigned long long int', .45, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('8', .2, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('%llu', .25, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('9', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('signed char', .45, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('1', .2, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('%c', .25, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('10', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('unsigned char', .45, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('1', .2, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('%c', .25, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('11', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('float', .45, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('4', .2, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('%f', .25, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('12', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('double', .45, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('8', .2, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('%lf', .25, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('13', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('long double', .45, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('16', .2, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('%Lf', .25, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
          Container(
            height: SizeConfig.screenHeight*.1,
            child: Row(
              children: [
                reUse.containerWithoutBold('13', .1, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('bool', .45, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('1 bit only', .2, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
                reUse.containerWithoutBold('no specifier', .25, 0, SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
