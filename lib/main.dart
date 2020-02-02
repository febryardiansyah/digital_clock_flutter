import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: Text('Digital Clock'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DigitalClock(
                areaAligment: AlignmentDirectional.center,
                areaHeight: 130,
                areaWidth: 260,
                digitAnimationStyle: Curves.elasticOut,
                is24HourTimeFormat: false,
                hourMinuteDigitDecoration: BoxDecoration(color: Colors.transparent),
                secondDigitDecoration: BoxDecoration(color: Colors.transparent),
                areaDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10,10),
                      color: Colors.black38,
                      blurRadius: 20
                    ),
                    BoxShadow(
                      offset: Offset(-10,-10),
                      color: Colors.white.withOpacity(0.85),
                      blurRadius: 20
                    )
                  ]
                ),
                hourMinuteDigitTextStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
                amPmDigitTextStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



