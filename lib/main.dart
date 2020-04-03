import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

import 'animated_background.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: Stack(
          children: <Widget>[ParticleBackgroundApp(), MyApp()],
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    var formatTgl = DateFormat("dd MMM yyyy").format(now);

    return Container(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 250.0,
                  child: TypewriterAnimatedTextKit(
                      onTap: () {
                        print("Tap Event");
                      },
                      isRepeatingAnimation: true,
                      totalRepeatCount: 100,
                      speed: Duration(milliseconds: 200),
                      text: [ucapan()],
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "Agne"),
                      textAlign: TextAlign.start,
                      alignment:
                          AlignmentDirectional.topStart // or Alignment.topLeft
                      ),
                ),
                Text(
                  'Febry Ardiansyah',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DigitalClock(
                  areaAligment: AlignmentDirectional.center,
                  areaHeight: 130,
                  areaWidth: 260,
                  digitAnimationStyle: Curves.elasticOut,
                  is24HourTimeFormat: false,
                  hourMinuteDigitDecoration:
                      BoxDecoration(color: Colors.transparent),
                  secondDigitDecoration:
                      BoxDecoration(color: Colors.transparent),
                  areaDecoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  hourMinuteDigitTextStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                  amPmDigitTextStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 150.0,
                  child: TextLiquidFill(
                    text: formatTgl,
                    waveColor: Colors.blueAccent,
                    boxBackgroundColor: Colors.redAccent,
                    textStyle: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                    boxHeight: 200.0,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(width: 20.0, height: 100.0),
                    Text(
                      "Be",
                      style: TextStyle(fontSize: 43.0),
                    ),
                    SizedBox(width: 20.0, height: 100.0),
                    RotateAnimatedTextKit(
                        isRepeatingAnimation: true,
                        totalRepeatCount: 100,
                        onTap: () {
                          print("Tap Event");
                        },
                        text: ["TOXIC", "RETARD", "DIFFERENT"],
                        textStyle: TextStyle(
                            fontSize: 40.0,
                            fontFamily: "Horizon",
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                        alignment: AlignmentDirectional
                            .topStart // or Alignment.topLeft
                        ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String ucapan() {
    var formatWaktu = int.parse(DateFormat('kk').format(DateTime.now()));
    String pesan = '';
    if (formatWaktu <= 12) {
      return pesan = 'Selamat Pagi,,';
    } else if (formatWaktu > 12 && formatWaktu <= 16) {
      return pesan = 'Selamat Siang,,';
    } else if (formatWaktu > 16 && formatWaktu <= 20) {
      return pesan = 'Selamat Sore,,';
    } else {
      return pesan = 'Selamat Malam,,';
    }
  }
}
