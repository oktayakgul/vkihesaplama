import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //const ReusableCard({Key key}) : super(key: key);
  //hey! keys are using with moving object, positions, games etc.
  //go. When to use Keys on YouTube
  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
