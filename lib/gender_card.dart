import 'package:flutter/material.dart';
import 'constants.dart';

class GenderCard extends StatelessWidget {
  final genIcon;
  final txt;
  final iclr;
  GenderCard({@required this.genIcon, @required this.txt, @required this.iclr});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            genIcon,
            size: 70.0,
            color: iclr,
          ),
          SizedBox(height: 20.0),
          Text(
            txt,
            style: kTxtStyle,
          )
        ],
      ),
    );
  }
}
