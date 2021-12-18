import 'package:flutter/material.dart';

void main()=>runApp(BMI());
class BMI extends StatelessWidget {
  const BMI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.blue,),
      home: InputPage(),
    );
  }
}
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
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Text('icons and text here'),
             Text('icons and text here'),
             Text('icons and text here'),
              ],
            ),
            Row(
             children: [
               Text('icons and text here'),
             
             ],
             
             
            ),
            

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
      child: Icon(Icons.add),),

    );
  }
}