import 'package:flutter/material.dart';
import 'package:we_fit/helper/constants.dart';

class TopCard extends StatelessWidget {

  final IconData iconName;
  final String cardText;
  final Color iconColor;

  const TopCard({this.iconColor, this.cardText, this.iconName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 70.0,
          color: iconColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}