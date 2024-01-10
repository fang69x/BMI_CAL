import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconData.dart';
import 'reusable.dart';

const BottomHeight = 80.0;
const ColorSwatch = Color(0xFF1C1C2D);

const maleInactiveColor = Color(0xFF1C1C2D);
const femaleInactiveColor = Color(0xFF1C1C2D);
const activeColor = Color.fromARGB(255, 109, 111, 146);

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
                  colour: ColorSwatch,
                  cardChild: Column(
                    children: [],
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
                  colour: ColorSwatch,
                  cardChild: Column(
                    children: [],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {},
                  colour: ColorSwatch,
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
