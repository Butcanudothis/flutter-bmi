import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'gender_card.dart';
import 'constants.dart';

enum GenderBender {
  male,
  female,
  none,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color mclr = kInactiveCardClr;
  Color fclr = kInactiveCardClr;
  Color miclr = kInactiveIconClr;
  Color ficlr = kInactiveIconClr;
  int height = 180;
  GenderBender g;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            //flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  //flex: 1,
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        //genButtonPressed(GenderBender.male);
                        g = (g != GenderBender.male)
                            ? (GenderBender.male)
                            : (GenderBender.none);
                      });
                    },
                    clr: mclr =
                        (g == GenderBender.male) ? (kGclr) : (kInactiveCardClr),
                    cardChild: GenderCard(
                      genIcon: FontAwesomeIcons.mars,
                      txt: 'MALE',
                      iclr: miclr = (g == GenderBender.male)
                          ? (kAiclr)
                          : (kInactiveIconClr),
                    ),
                  ),
                ),
                Expanded(
                  //flex: 1,
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        //genButtonPressed(GenderBender.male);
                        g = (g != GenderBender.female)
                            ? (GenderBender.female)
                            : (GenderBender.none);
                      });
                    },
                    clr: fclr = (g == GenderBender.female)
                        ? (kGclr)
                        : (kInactiveCardClr),
                    cardChild: GenderCard(
                      genIcon: FontAwesomeIcons.venus,
                      txt: 'FEMALE',
                      iclr: ficlr = (g == GenderBender.female)
                          ? (kAiclr)
                          : (kInactiveIconClr),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            //flex: 1,
            child: ReusableCard(
              clr: kGclr,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kTxtStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style:
                            kTxtStyle.copyWith(fontSize: 20, letterSpacing: 0),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 17.0,
                      ),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 25.0),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0XFF10AABB),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 140.0,
                      max: 220,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      //activeColor: Color(0XFF10AABB),
                      inactiveColor: kInactiveIconClr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            //flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  //flex: 1,
                  child: ReusableCard(clr: kGclr),
                ),
                Expanded(
                  //flex: 1,
                  child: ReusableCard(clr: kGclr),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0XFF10AABB),
            height: 80.0,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
