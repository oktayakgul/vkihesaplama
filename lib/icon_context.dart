import 'package:flutter/material.dart';

class IconContext extends StatelessWidget {
  IconContext({this.itemTextString, this.itemIconData});

  final String itemTextString;
  final IconData itemIconData; //FontAwesomeIcons.mars, size: 80.0

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(itemIconData, size: 80.0),
        SizedBox(height: 16),
        Text(itemTextString,
            style: (TextStyle(
              fontSize: 20,
              color: Color(0xFF8D8D98),
            ))),
      ],
    );
  }
}
