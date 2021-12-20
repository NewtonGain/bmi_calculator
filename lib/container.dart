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
  Text('Calculator'),
  
  Row(children: [
    Text('Icon and Text')
  ],),
],
      ),
      
      
      floatingActionButton:  FloatingActionButton(
        onPressed: (){},
      child: Icon(Icons.add),),

    );
  }
}