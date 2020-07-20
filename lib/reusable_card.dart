import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color clr;
  final cardChild;
  final Function onPress;
  ReusableCard({@required this.clr, this.cardChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: clr, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
