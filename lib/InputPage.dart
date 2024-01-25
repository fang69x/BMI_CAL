import 'package:bmi_cal/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconData.dart';
import 'reusable.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? g;
  Color maleCardColor = maleInactiveColor;
  Color femaleCardColor = femaleInactiveColor;
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      g = Gender.male;
                    });
                  },
                  colour: g == Gender.male ? activeColor : maleInactiveColor,
                  cardChild: CardData(
                    photu: FontAwesomeIcons.mars,
                    name: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      g = Gender.female;
                    });
                  },
                  colour:
                      g == Gender.female ? activeColor : femaleInactiveColor,
                  cardChild: CardData(
                    photu: FontAwesomeIcons.venus,
                    name: 'FEMALE',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {},
                  colour: colorswatch,
                  cardChild: Column(
                    children: [
                      Text(
                        "HEIGHT",
                        style: labelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: numberTstykle,
                          ),
                          Text(
                            "cm",
                            style: labelTextStyle,
                          )
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {},
                  colour: colorswatch,
                  cardChild: Column(
                    children: [],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {},
                  colour: colorswatch,
                  cardChild: Column(
                    children: [],
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Color(0xFFEB1555),
            width: double.infinity,
            height: BottomHeight,
            margin: EdgeInsets.only(top: 15.0),
          )
        ],
      ),
    );
  }
}
