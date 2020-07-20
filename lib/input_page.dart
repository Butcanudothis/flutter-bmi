import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'gender_card.dart';

const gclr = Color(0XFF1D1E33);
const inactiveCardClr = Color(0xFF111328);
const inactiveIconClr = Color(0XFF8E8E99);
const aiclr = Colors.white70;

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
  Color mclr = inactiveCardClr;
  Color fclr = inactiveCardClr;
  Color miclr = inactiveIconClr;
  Color ficlr = inactiveIconClr;
//  void genButtonPressed(GenderBender g) {
//    if (g == GenderBender.male) {
//      mclr = gclr;
//      fclr = inactiveCardClr;
//      miclr = aiclr;
//      ficlr = inactiveIconClr;
//    } else if (g == GenderBender.female) {
//      fclr = gclr;
//      mclr = inactiveCardClr;
//      ficlr = aiclr;
//      miclr = inactiveIconClr;
//    }
//  }
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
                        (g == GenderBender.male) ? (gclr) : (inactiveCardClr),
                    cardChild: GenderCard(
                      genIcon: FontAwesomeIcons.mars,
                      txt: 'MALE',
                      iclr: miclr = (g == GenderBender.male)
                          ? (aiclr)
                          : (inactiveIconClr),
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
                    clr: fclr =
                        (g == GenderBender.female) ? (gclr) : (inactiveCardClr),
                    cardChild: GenderCard(
                      genIcon: FontAwesomeIcons.venus,
                      txt: 'FEMALE',
                      iclr: ficlr = (g == GenderBender.female)
                          ? (aiclr)
                          : (inactiveIconClr),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            //flex: 1,
            child: ReusableCard(clr: gclr),
          ),
          Expanded(
            //flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  //flex: 1,
                  child: ReusableCard(clr: gclr),
                ),
                Expanded(
                  //flex: 1,
                  child: ReusableCard(clr: gclr),
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

//= Color(0xFF1D1F33)
//() {
//                      setState(() {
//                        //genButtonPressed(GenderBender.male);
//                        g = (g != GenderBender.male)
//                            ? (GenderBender.male)
//                            : (GenderBender.none);
//                      });
//           },
