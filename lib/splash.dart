import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gtbankapp/utils.dart';
import 'LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Hero(tag: "GTB",
                              child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: spinkit,
                      ),
                      Text(
                        "GTBank",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 90,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                "Guaranty Trust Bank",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
