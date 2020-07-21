import 'package:bmi_calculator/calculate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'gender_card.dart';
import 'constants.dart';
import 'bmi_calc.dart';
import 'round_icon_button.dart';
import 'bottom_button.dart';

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
  int weight = 50;
  int age = 18;
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
                      thumbColor: kAccentColor,
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
                  child: ReusableCard(
                    clr: kGclr,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kTxtStyle,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              idata: FontAwesomeIcons.minus,
                              roundIconButtonPressed: () {
                                setState(() {
                                  weight = weight - 1;
                                  print('$weight');
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              idata: FontAwesomeIcons.plus,
                              roundIconButtonPressed: () {
                                setState(() {
                                  weight = weight + 1;
                                  print('$weight');
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
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
                          'AGE',
                          style: kTxtStyle,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              idata: FontAwesomeIcons.minus,
                              roundIconButtonPressed: () {
                                setState(() {
                                  age = age - 1;
                                  print('$age');
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              idata: FontAwesomeIcons.plus,
                              roundIconButtonPressed: () {
                                setState(() {
                                  age = age + 1;
                                  print('$age');
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTxt: 'CALCULATE',
            onTp: () {
              BmiCalc obj = new BmiCalc(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Calculate(
                    bmi: obj.calc(),
                    res: obj.resultText(),
                    resInt: obj.resultInt(),
                    resClr: obj.resultColor(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
