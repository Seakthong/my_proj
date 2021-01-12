import 'package:flutter/material.dart';
import 'package:my_proj/constaint.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 16.0),
        padding: EdgeInsets.only(bottom: 16.0),
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            this.buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
