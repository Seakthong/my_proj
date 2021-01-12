import 'package:flutter/material.dart';
import 'package:my_proj/constaint.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String label;

  IconContent({this.iconData, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          this.label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
