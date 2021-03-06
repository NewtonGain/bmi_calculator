import 'package:flutter/material.dart';

class Iconcontents extends StatelessWidget {
  final IconData icon;
  final String label;

  Iconcontents({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          '$label',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFFFFF)),
        )
      ],
    );
  }
}

class Containers extends StatelessWidget {
  final Color colors;

  final Widget? iconContent;
  Containers({required this.colors, this.iconContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: colors),
      child: iconContent,
    );
  }
}
