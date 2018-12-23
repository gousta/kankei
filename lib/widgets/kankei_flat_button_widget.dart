import 'package:flutter/material.dart';

class KankeiFlatButton extends StatelessWidget {
  KankeiFlatButton({this.label, this.onPressed});

  final String label;
  final Function onPressed;

  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Text(
        'Create an account',
        style: TextStyle(color: Colors.black54),
      ),
    );
  }
}
