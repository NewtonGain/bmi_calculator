import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final String label;
  final IconData icon;
  IconText(this.icon, this.label);
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,  
      children: [ 
        Icon(icon),
       Text('$label'),
      ],
    );
  }
}