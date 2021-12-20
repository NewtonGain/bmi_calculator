import 'package:bmi_calculator/container.dart';
import 'package:flutter/material.dart';

void main()=>runApp(BMI());
class BMI extends StatelessWidget {
  const BMI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xFF0F1337),
      accentColor: Color(0xFFDF005A),
      
     textTheme: TextTheme().copyWith(
       bodyText2: TextStyle(fontSize: 30,color: Color(0xFFFFFFFF),),),
      scaffoldBackgroundColor: Color(0xFF0F1337),),
      
      home: InputPage(),
    );
  }
}
