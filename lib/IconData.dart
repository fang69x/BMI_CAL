import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  final IconData photu;
  final String name;
  CardData({required this.photu, required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          photu,
          size: 110.0,
          color: Color.fromARGB(255, 240, 240, 240),
        ),
      ],
    );
  }
}
