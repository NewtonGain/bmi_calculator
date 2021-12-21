import 'package:flutter/material.dart';
class InputPage extends StatefulWidget {
  const InputPage({ Key? key }) : super(key: key);

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
             Expanded(child: Reuseable(color:Color(0xFF0F1337) ),),
             Expanded(child: Reuseable(color:Color(0xFF0F1337) ),),
             
           ],
           
         ),
         
         ),
         


         
          Expanded(child: 
         Row(
           children: [
             Expanded(child: Reuseable(color:Color(0xFF0F1337) ),),
            
             
           ],
           
         ),
         
         ),
          Expanded(child: 
         Row(
           children: [
             Expanded(child: Reuseable(color:Color(0xFF0F1337) ),),
             Expanded(child: Reuseable(color:Color(0xFF0F1337) ),),
             
           ],
           
         ),
         
         ),
        
        
       ],
       
      ),
    );
  }
}

class Reuseable extends StatelessWidget {
  Reuseable({required this.color, });
  final Color color;
  

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
    color: Color(0xFF0F1337),
    borderRadius: BorderRadius.circular(13)
        ),
        
        

      );
  }
}