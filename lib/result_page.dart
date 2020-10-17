import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'bottom_button.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
//  ResultPage(
//      {@required this.interpretation,
//      @required this.bmiResult,
//      @required this.resultText});
//
//  final String bmiResult;
//  final String resultText;
//  final String interpretation;

  @override
  Widget build(BuildContext context) {
    final Map check = ModalRoute.of(context).settings.arguments;
//    print(check);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReUsableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    check['resultText'],
                    style: kResultTextStyle,
                  ),
                  Text(
                    check['bmiResult'],
                    style: kBMITextStyle,
                  ),
                  Text(
                    check['interpretation'],
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              buttonTitle: 'Re-Calculate',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
