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
                      child: container(
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
                    child: container(
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
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: container(
                      colors: Color(0xFF26294D),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: container(
                      colors: Color(0xFF26294D),
                    ),
                  ),
                  Expanded(child: container(colors: Color(0xFF26294D)))
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Color(0xFFFD0225),
            )
          ],
        ),
      ),
    );
  }
}