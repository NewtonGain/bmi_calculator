import 'package:bmi_calculator/height.dart';
import 'package:bmi_calculator/reuseable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var activeCardColor = Color(0xFF155328);
  var inActiveCardColor = Color(0xFF272B4E);

  var maleCardColor = Color(0xFF272B4E);

  var femaleCardColor = Color(0xFF272B4E);

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      } else if (maleCardColor == activeCardColor) {
        maleCardColor = inActiveCardColor;
      }
    }
  }

  void updateColor2(int gender) {
    if (gender == 2) {
      if (femaleCardColor == inActiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inActiveCardColor;
      } else if (femaleCardColor == activeCardColor)
        femaleCardColor = inActiveCardColor;
    }
  }

  double _currentSliderValue = 20;
  int _counter1 = 40;
  int _counter2 = 20;

  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _decrementCounter1() {
    setState(() {
      _counter1--;
    });
  }

  void _decrementCounter2() {
    setState(() {
      _counter2--;
    });
  }

  int _weight = 45;
  double _height = 99.0;
  String? result;
  String? helpTips;
  Color? backgroundColor;
  void bmiCalculation() {
    final bmiHeightCm = _height.round();
    final bmiHeightM = bmiHeightCm / 100;
    final bmiWeight = _weight;
    final bmi = bmiWeight / (bmiHeightM * bmiHeightM);
    if (bmi <= 18.5) {
      result = "Under Weight";
      helpTips = "Please! Eat healthy Food";
      backgroundColor = Colors.white;
    } else if (bmi > 18.5 && bmi <= 24.9) {
      result = "Normal";
      helpTips = "wow! Good healthy body";
      backgroundColor = Colors.green.shade500;
    } else if (bmi > 24.9 && bmi <= 29.9) {
      result = "Over Weight";
      helpTips = " Try, some Workout";
      backgroundColor = Colors.yellow.shade500;
    } else if (bmi > 29.9 && bmi <= 34.9) {
      result = "Obesity (Class 1)";
      helpTips = "Opps! Try, some Workout and regular Exercies";
      backgroundColor = Colors.yellow.shade800;
    } else if (bmi > 34.9 && bmi <= 39.9) {
      result = "Obesity (Class 2)";
      helpTips = "Please!  you will go Gyms and diet controll";
      backgroundColor = Colors.red;
    } else if (bmi > 40) {
      result = "Extreme Obesity (Class 3)";
      helpTips = "you will go Gyms and diet controll Now!";
      backgroundColor = Color(0xFF7030A0);
    }

    AlertDialog alertDialog = AlertDialog(
      backgroundColor: backgroundColor,
      content: Container(
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(fontSize: 35),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              helpTips.toString(),
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Cancel',
              style: TextStyle(fontSize: 26),
              textAlign: TextAlign.center,
            ))
      ],
    );
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF04040C),
          scaffoldBackgroundColor: Color(0xFF0F1335)),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("BMI Calculator"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(1);
                        });
                      },
                      child: Containers(
                        colors: maleCardColor,
                        iconContent: Iconcontents(
                            icon: FontAwesomeIcons.mars, label: 'Male'),
                      ),
                    ),
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor2(2);
                      });
                    },
                    child: Containers(
                      colors: femaleCardColor,
                      iconContent: Iconcontents(
                          icon: FontAwesomeIcons.venus, label: 'Female'),
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Card(
              color: Color(0xFF141A3B),
              margin: EdgeInsets.all(20),
              child: Expanded(
                child: Column(
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(fontSize: 16),
                    ),
                    Height(currentSliderValue: _currentSliderValue),
                    Row(
                      children: [
                        Expanded(
                          child: Slider(
                            value: _currentSliderValue,
                            activeColor: Color(0xFFFB0165),
                            inactiveColor: Colors.white,
                            max: 200,
                            label: _currentSliderValue.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                _currentSliderValue = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Color(0xFF141A3B),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT'),
                          Text(
                            '$_counter1',
                            style: TextStyle(fontSize: 58),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FloatingActionButton(
                                onPressed: _decrementCounter1,
                                child: Icon(Icons.remove),
                                backgroundColor: Color(0xFF1C203C),
                                foregroundColor: Colors.white,
                              ),
                              FloatingActionButton(
                                onPressed: _incrementCounter1,
                                child: Icon(Icons.add),
                                backgroundColor: Color(0xFF1C203C),
                                foregroundColor: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    child: Card(
                      color: Color(0xFF141A3B),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE'),
                          Text(
                            '$_counter2',
                            style: TextStyle(fontSize: 58),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FloatingActionButton(
                                onPressed: _decrementCounter2,
                                child: Icon(Icons.remove),
                                backgroundColor: Color(0xFF1C203C),
                                foregroundColor: Colors.white,
                              ),
                              FloatingActionButton(
                                onPressed: _incrementCounter2,
                                child: Icon(Icons.add),
                                backgroundColor: Color(0xFF1C203C),
                                foregroundColor: Colors.white,
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
            Container(
              width: double.infinity,
              height: 50,
              color: Color(0xFFF90065),
              child: TextButton(
                child: Text(
                  'Calculate Your BMI',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: bmiCalculation,
              ),
            )
          ],
        ),
      ),
    );
  }
}
