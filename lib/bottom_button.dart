import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final buttonTxt;
  final Function onTp;
  BottomButton({this.buttonTxt, this.onTp});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTp,
      child: Container(
        child: Center(
          child: Text(
            buttonTxt,
            style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 17.0),
          ),
        ),
        color: kAccentColor,
        height: 80.0,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
