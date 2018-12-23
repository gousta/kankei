import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({this.label});

  final String label;

  Widget build(BuildContext context) {
    return Text(label, style: TextStyle(color: Colors.black87, fontSize: 28));
  }
}
