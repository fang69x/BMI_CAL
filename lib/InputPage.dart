import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconData.dart';
import 'reusable.dart';

const BottomHeight = 80.0;
const ColorSwatch = Color(0xFF1C1C2D);

const activeColor = Color.fromARGB(255, 59, 61, 101);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      activeColor;
                    });
                  },
                  child: ReusableCard(
                    colour: ColorSwatch,
                    cardChild: CardData(
                      photu: FontAwesomeIcons.mars,
                      name: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: ColorSwatch,
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
                  colour: ColorSwatch,
                  cardChild: Column(
                    children: [],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
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
