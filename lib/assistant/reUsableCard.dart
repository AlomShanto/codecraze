import 'package:flutter/material.dart';

class ReUsableCard{
  Card reUsableCard(String str){
    return Card(
      child: Center(
        child: Text(
          str,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 10,
      shadowColor: Colors.grey,
      color: Colors.cyan,
    );
  }
}