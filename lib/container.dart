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
          Reuseable(color: Color(0xFF0F1337), iconContent: Icon(Icons.male), name: 'Femal', )
        ],
      )
    );
  }
}

class Reuseable extends StatelessWidget {
  Reuseable({required this.color, required this.iconContent, required this.name});
  final Color color;
  final Widget iconContent;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
    color: Color(0xFF0F1337),
    borderRadius: BorderRadius.circular(13)
        ),
        child: Column(
          children: [
            iconContent,
            Text(name)
          ],
        )
        

      );
  }
}