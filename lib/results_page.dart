import 'package:flutter/material.dart';
import 'package:bmi_cal/constant.dart';
import 'reusable.dart';
import 'bottom_button.dart';

class resultPage extends StatelessWidget {
  resultPage({
    required this.bmiResults,
    required this.resultText,
    required this.resultINterpretation,
  });

  late final String bmiResults;
  late final String resultText;
  late final String resultINterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Results",
          style: TitleTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Results : ",
                style: TitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeColor,
              onPress: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResults,
                    style: bmiTextStyle,
                  ),
                  Text(
                    resultINterpretation,
                    style: bodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'Re-CALCULATE'),
        ],
      ),
    );
  }
}
