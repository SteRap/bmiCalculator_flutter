import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed});

  final IconData? icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon),
        elevation: 6.0,
        constraints: BoxConstraints.tightFor(
          width: 56,
          height: 56,
        ),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        fillColor: Color(0xFF4c4F5E),
        onPressed: onPressed);
  }
}