import 'package:flutter/material.dart';

class KankeiMaterialButton extends StatelessWidget {
  KankeiMaterialButton({this.label, this.onPressed});

  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 200.0,
      height: 48.0,
      onPressed: onPressed,
      color: Colors.lightBlueAccent,
      child: Text(label, style: TextStyle(color: Colors.white)),
    );
  }
}
