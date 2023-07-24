import 'package:flutter/material.dart';

import '../config.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String? title;
  CustomButton({required this.onPressed, this.title});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(
        title ?? "Calculate BMI",
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
      shape: RoundedRectangleBorder(),
      fillColor: kActiveButtonColor,
      constraints: BoxConstraints.tightFor(
        width: double.infinity,
        height: 45,
      ),
      onPressed: onPressed,
    );
  }
}
