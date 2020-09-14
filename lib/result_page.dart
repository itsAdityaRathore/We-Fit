import 'package:flutter/material.dart';

import 'package:we_fit/components/bottom_button.dart';
import 'package:we_fit/components/reusable_card.dart';
import 'package:we_fit/helper/constants.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final Map<String, String> bmiInterpretation;

  ResultsPage({@required this.bmiResult, @required this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Center(
              // margin: EdgeInsets.only(left: 20.0),
              child: Text("Your Result", style: kResultTitleStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(bmiInterpretation['result'].toUpperCase(),
                      style: kResultText),
                  Text(bmiResult, style: kResultBMI),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      bmiInterpretation['interpretation'],
                      style: kLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            text: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}