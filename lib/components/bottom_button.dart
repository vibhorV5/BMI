import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.ontap, required this.txt});

  final VoidCallback ontap;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              txt,
              style: kLargeButtonText,
            ),
          ),
        ),
        color: kColorBottom,
        height: kBottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
