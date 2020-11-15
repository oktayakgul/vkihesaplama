import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_context.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inActiceCardColor = Color(0xFF111E66);
const selectedCardColor = Color(0xFF40415b);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { female, male }

class _InputPageState extends State<InputPage> {
  Color maleCardColor = activeCardColor;
  Color felameCardColor = activeCardColor;

  // 0-female, 1-male
  void changeGenderColor(Gender gender) {
    if (gender == Gender.female) {
      felameCardColor = selectedCardColor;
      maleCardColor = activeCardColor;
    } else if (gender == Gender.male) {
      maleCardColor = selectedCardColor;
      felameCardColor = activeCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("VKI Hesaplama")),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      changeGenderColor(Gender.male);
                    });
                  },
                  child: ReusableCard(
                    colour: maleCardColor,
                    cardChild: IconContext(
                      itemTextString: "ERKEK",
                      itemIconData: FontAwesomeIcons.mars,
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      changeGenderColor(Gender.female);
                    });
                  },
                  child: ReusableCard(
                    colour: felameCardColor,
                    cardChild: IconContext(
                        itemTextString: "KADIN",
                        itemIconData: FontAwesomeIcons.venus),
                  ),
                ))
              ],
            )),
            Expanded(child: ReusableCard(colour: activeCardColor)),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: ReusableCard(colour: activeCardColor)),
                  Expanded(child: ReusableCard(colour: activeCardColor))
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
