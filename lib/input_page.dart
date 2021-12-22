
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
double increament=0;

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
            Card(
              color: Color(0xFF141A3B),
              margin: EdgeInsets.all(20),
              child: Expanded(
                child: Column(
                  children: 
                    [Text('HEIGHT',style: TextStyle(fontSize: 16),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Text(_currentSliderValue.round().toString(),style: TextStyle(fontSize: 85),),
                           Padding(
                             padding: const EdgeInsets.only(top: 45),
                             child: Text('cm'),
                           ),
                        
                      ],
                    ),
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
                            _currentSliderValue.round().toString();
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
            SizedBox(
              height: 6,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       
                        Text('HEIGHT'),
                        Text('77',style: TextStyle(fontSize: 58),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                increament++;
                                
                              });
                            },child: Icon(Icons.remove),backgroundColor: Color(0xFFFB0165),),
                             FloatingActionButton(onPressed: (){},child: Icon(Icons.add)),
                             

                          ],
                        )
                      ],
                    )
                  ),
                  Expanded(
                    child: container(colors: Color(0xFF26294D),),),
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
