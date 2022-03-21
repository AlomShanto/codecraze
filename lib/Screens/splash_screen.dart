import 'dart:async';

import 'package:codecraze/Screens/Statistics/search_page.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo1.png',
              height: 170,
            ),
            const SizedBox(height: 30),
            // const CircularProgressIndicator(
            //   valueColor: AlwaysStoppedAnimation(Colors.white),
            // ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: const LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}