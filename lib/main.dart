import 'package:color_clk/secondPage.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
// import 'package:analog_clock/analog_clock.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
        backgroundColor: Colors.purple,
        seconds: 3,
        navigateAfterSeconds: new secondPage(),
        title: new Text(
          'Color clock',
          style: new TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40.0),
        ),
        image: Image.asset("assets/images/Test_Logo.png"),
        //backgroundColor: Colors.white,
        //loaderColor: Colors.red,
      ),
    );
  }
}
