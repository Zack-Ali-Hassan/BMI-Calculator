import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_one/config.dart';
import 'package:test_one/screens/result_screen.dart';
import 'package:test_one/widges/widges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female;
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 50;
  int weight = 2;
  int age = 3;
  Gender selectedGender = Gender.male;
  void _goTOResultScreen() {
    double _result = (weight / pow(height / 100, 2));
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return ResultScreen(
            result: _result,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
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
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      selected: selectedGender == Gender.male ? true : false,
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: IconContent(
                        icondata: FontAwesomeIcons.mars,
                        title: "Male",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      selected: selectedGender == Gender.female ? true : false,
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: IconContent(
                        icondata: FontAwesomeIcons.venus,
                        title: "Female",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.round().toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                          thumbColor: kActiveButtonColor,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 16,
                          )),
                      child: Slider(
                        value: height,
                        min: 10,
                        max: 300,
                        onChanged: (newVal) {
                          setState(() {
                            height = newVal;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                weight.toInt().toString(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "kg",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                child: Icon(Icons.remove),
                                fillColor: Colors.grey,
                                constraints: BoxConstraints.tightFor(
                                  height: 46,
                                  width: 46,
                                ),
                                shape: CircleBorder(),
                                onPressed: () {
                                  setState(
                                    () {
                                      if (weight >= 3) {
                                        weight--;
                                      } else {}
                                    },
                                  );
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RawMaterialButton(
                                child: Icon(Icons.add),
                                fillColor: Colors.grey,
                                constraints: BoxConstraints.tightFor(
                                  height: 46,
                                  width: 46,
                                ),
                                shape: CircleBorder(),
                                onPressed: () {
                                  setState(
                                    () {
                                      if (weight >= 2) {
                                        weight++;
                                      } else {}
                                    },
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '$age',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "yrs",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                child: Icon(Icons.remove),
                                fillColor: Colors.grey,
                                constraints: BoxConstraints.tightFor(
                                  height: 46,
                                  width: 46,
                                ),
                                shape: CircleBorder(),
                                onPressed: () {
                                  setState(
                                    () {
                                      if (age >= 4) {
                                        age--;
                                      } else {}
                                    },
                                  );
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RawMaterialButton(
                                child: Icon(Icons.add),
                                fillColor: Colors.grey,
                                constraints: BoxConstraints.tightFor(
                                  height: 46,
                                  width: 46,
                                ),
                                shape: CircleBorder(),
                                onPressed: () {
                                  setState(() {
                                    if (age >= 3) {
                                      age++;
                                    } else {}
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(onPressed: _goTOResultScreen),
          ],
        ));
  }
}
