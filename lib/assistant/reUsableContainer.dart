import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReUsableContainer{

  BoxDecoration boxDecoration(){
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          spreadRadius: 1,
        )
      ],
    );
  }

  Container containerWithoutBold(String x, double size, double d , double screenHeight, double screenWidth){
    return Container(
      height: screenHeight*.1,
      width: screenWidth*size-d,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
          )
        ],
      ),
      child: Center(
          child: Text(
            x,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
            ),
          )
      ),
    );
  }
  Container containerWithBold(String x, double size, double d , double screenHeight, double screenWidth){
    return Container(
      height: screenHeight*.1,
      width: screenWidth*size-d,
      decoration: boxDecoration(),
      child: Center(
          child: Text(
            x,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
      ),
    );
  }
  Container containerWithUnderlinedText(String x, double size, double d , double screenHeight, double screenWidth){
    return Container(
      height: screenHeight*.1,
      width: screenWidth*size-d,
      decoration: boxDecoration(),
      child: Center(
          child: Text(
            x,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          )
      ),
    );
  }
  Container containerForVerdict(String x, double size, double d , double screenHeight, double screenWidth){
    if(x=="ACCEPTED")
      return Container(
      height: screenHeight*.1,
      width: screenWidth*size-d,
      decoration: boxDecoration(),
      child: Center(
          child: Text(
            x,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.green,
            ),
          )
      ),
    );
    else
      return Container(
        height: screenHeight*.1,
        width: screenWidth*size-d,
        decoration: boxDecoration(),
        child: Center(
            child: Text(
              x,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
            )
        ),
      );
  }
}