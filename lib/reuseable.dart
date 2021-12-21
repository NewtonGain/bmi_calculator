import 'package:flutter/material.dart';

class Reuseable extends StatelessWidget {
  Reuseable({required this.color,required this.iconContent, });
  final Color color;
  final Widget ? iconContent;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: iconContent,
        margin: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
    color: Color(0xFF0F1337),
    
    borderRadius: BorderRadius.circular(13)
        ),
      );
  }
}