import 'package:flutter/material.dart';

const BottomHeight = 80.0;
const ColorSwatch = Color(0xFF1C1C2D);

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
                child: ReusableCard(colour: ColorSwatch),
              ),
              Expanded(
                child: ReusableCard(colour: ColorSwatch),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(colour: ColorSwatch),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(colour: ColorSwatch),
              ),
              Expanded(
                child: ReusableCard(
                  colour: ColorSwatch,
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

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 200.0,
      width: 400.0,
      margin: EdgeInsets.all(15.0),
    );
  }
}
