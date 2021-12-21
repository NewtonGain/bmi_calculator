import 'package:bmi_calculator/icon_text.dart';
import 'package:bmi_calculator/reuseable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class InputPage extends StatefulWidget {
  final activeCardColor= Color(0xFF0F1337);
  final inActiveColor= Color(0xFF0F1937);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator'),
      centerTitle: true,
      ),
      body: Column(
       children: [
         Expanded(child: 
         Row(
          
           children: [
             Expanded(child: GestureDetector(onTap: (){},
               child: Reuseable(color:Color(0xFF0F1337), iconContent: 
                 IconText(FontAwesomeIcons.mars, "Male"),
                        ),
             ),),
             Expanded(child: Reuseable(color:Color(0xFF0F1337), iconContent: 
               IconText(FontAwesomeIcons.venus, "Female"),
           ),),
             
           ],
           
         ),
         
         ),
          Expanded(child: 
         Row(
           children: [
             Expanded(child: Reuseable(color:Color(0xFF0F1337), iconContent: null, ),),
           ],
         ),
         ),
          Expanded(child: 
         Row(
           children: [
             Expanded(child: Reuseable(color:Color(0xFF0F1337), iconContent: null, ),),
             Expanded(child: Reuseable(color:Color(0xFF0F1337), iconContent: null, ),),
             
           ],
           
         ),
         
         ),
        
        Container(
          color: Color(0xFFDE005A),
          height: 60,
          width: double.infinity
        )
       ],
       
       
      ),
    );
  }
}



