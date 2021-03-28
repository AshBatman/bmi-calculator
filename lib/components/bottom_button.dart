import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.buttonName, this.onTap});

  final String buttonName;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(buttonName, style: kLargeButtonStyle,),
        color: kButtomColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerheight,
      ),
    );
  }
}