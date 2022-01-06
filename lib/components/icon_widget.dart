import 'package:flutter/material.dart';
import '../constants.dart';

class IconWidget extends StatelessWidget {
  final IconData typee;
  final String sex;

  IconWidget({required this.typee, required this.sex});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          typee,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          sex,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
