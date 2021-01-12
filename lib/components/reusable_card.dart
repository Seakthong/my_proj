import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onTap;

  ReusableCard({@required this.color, this.cardChild, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: this.cardChild,
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
