import 'package:flutter/material.dart';
import 'package:test_one/config.dart';
import 'package:test_one/widges/custom_button.dart';
import 'package:test_one/widges/reusable_card.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  ResultScreen({required this.result});
  String translateResult() {
    if (result > 0 && result < 18.5) {
      return "You are Underweight 😊";
    } else if (result > 18.5 && result < 24.9) {
      return "You are in shape (Normal or Healthy Weight) 😊";
    } else if (result > 24.9 && result < 29.9) {
      return "You are Overweight 😊";
    } else {
      return "You are Obese 😊";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kActiveButtonColor,
        title: Text(
          "Calculate Your Body Mass ".toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Your Result",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      result.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    translateResult(),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          CustomButton(
            onPressed: () {
              Navigator.pop(context);
            },
            title: "Re-calculate",
          )
        ],
      ),
    );
  }
}
