import 'package:flutter/material.dart';
class Height extends StatelessWidget {
  const Height({
    Key? key,
    required double currentSliderValue,
  }) : _currentSliderValue = currentSliderValue, super(key: key);

  final double _currentSliderValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _currentSliderValue.round().toString(),
          style: TextStyle(fontSize: 85),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Text('cm'),
        ),
      ],
    );
  }
}
