import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData idata;
  final Function roundIconButtonPressed;
  RoundIconButton({this.idata, this.roundIconButtonPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: roundIconButtonPressed,
      elevation: 0.0,
      child: Icon(
        idata,
      ),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 40.0, height: 40.0),
      fillColor: kInactiveIconClr,
      splashColor: kAiclr,
    );
  }
}
