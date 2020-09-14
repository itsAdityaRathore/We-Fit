import 'package:flutter/material.dart';
import 'package:we_fit/BMI.dart';
import 'package:we_fit/Dashboard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: RaisedButton(
              child: Text("BMI"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BMI()),
                );
              }),
        ),
        FloatingActionButton(
            child: Icon(Icons.watch),
            backgroundColor: Colors.blueAccent,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            })
      ],
    ));
  }
}
