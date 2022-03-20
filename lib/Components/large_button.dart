import 'package:flutter/material.dart';
import '../constants.dart';
class largeButton extends StatelessWidget {
  largeButton({this.textButton =""});

  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          textButton,
          style: kLargeButtonStyle,
        ),
      ),
      height: kBottomContainerHeight,
      width: double.infinity,
      color: kBottomContainerColor,
      padding: EdgeInsets.only(bottom: 20.0),
      margin: EdgeInsets.only(top: 10),
    );
  }
}