import 'package:bmi_calculator/constants.dart';

import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'bottom_button.dart';

class Calculate extends StatelessWidget {
  Calculate(
      {@required this.bmi,
      @required this.res,
      @required this.resInt,
      this.resClr});

  final String bmi;
  final String res;
  final String resInt;
  final Color resClr;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: kAccentColor,
        title: Text(
          'BMI CALCULATOR',
          textAlign: TextAlign.center,
          style: TextStyle(
            letterSpacing: 2.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Center(
            child: Text(
              'Your Result',
              style: kNumberTextStyle.copyWith(fontSize: 50.0),
            ),
          )),
          Expanded(
            flex: 8,
            child: Container(
                child: ReusableCard(
              clr: kGclr,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    res,
                    style: kTxtStyle.copyWith(color: resClr, fontSize: 25.0),
                  ),
                  Text(
                    bmi,
                    style: kNumberTextStyle.copyWith(fontSize: 100.0),
                  ),
                  Text(
                    resInt,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white60,
                    ),
                  )
                ],
              ),
            )),
          ),
          BottomButton(
            buttonTxt: 'RE-CALCULATE',
            onTp: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
