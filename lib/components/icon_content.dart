import 'package:flutter/material.dart';
import '../constants.dart';


//contains the content inside each reusableCard
class IconContent extends StatelessWidget {
  //Constructor for the widget
  IconContent({this.icon, this.label});

  //properties for the contents of widgets
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
