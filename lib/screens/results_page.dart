import 'package:bmi/components/bottom_button.dart';
import '../main.dart';
import '../constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import 'package:bmi/bmi_brain.dart';

class Results extends StatelessWidget {
  Results(
      {required this.getbmi, required this.getresult, required this.getinter});

  final String getbmi;
  final String getresult;
  final String getinter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResuableCard(
              colour: kColorMain,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    getresult.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    getbmi,
                    style: kBMITextStyle,
                  ),
                  Text(
                    getinter,
                    textAlign: TextAlign.center,
                    style: kInterpretTextStyle,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
                ontap: () {
                  Navigator.pop(context);
                },
                txt: 'RE-CALCULATE'),
          ),
        ],
      ),
    );
  }
}
