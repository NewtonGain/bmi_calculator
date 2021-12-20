import 'package:bmi_calculator/container.dart';
import 'package:flutter/material.dart';

void main()=>runApp(BMI());
class BMI extends StatelessWidget {
  const BMI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData.dark().copyWith(
       primaryColor: Color(0xFF0F1337),scaffoldBackgroundColor: Colors.blue,
     ),
      
      home: InputPage(),
    );
  }
}
