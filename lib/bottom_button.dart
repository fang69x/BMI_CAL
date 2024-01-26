import 'package:bmi_cal/constant.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final void Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonTitle, // Use the provided parameter for the Text widget
              style: Largebutton,
            ),
          ],
        ),
        color: Color(0xFFEB1555),
        width: double.infinity,
        height: BottomHeight,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 15.0),
      ),
    );
  }
}
