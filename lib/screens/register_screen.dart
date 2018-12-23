import 'package:flutter/material.dart';
import 'package:kankei/widgets/header_widget.dart';

class RegisterScreen extends StatelessWidget {
  static String tag = 'register-screen';

  @override
  Widget build(BuildContext context) {
    final inputEmail = TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(3.0)),
      ),
    );

    final inputPassword = TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(3.0)),
      ),
    );

    final inputShopName = TextFormField(
      decoration: InputDecoration(
        hintText: 'Shop Name',
        contentPadding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(3.0)),
      ),
    );

    final registerButton = MaterialButton(
      minWidth: 200.0,
      height: 48.0,
      onPressed: () {},
      color: Colors.lightBlueAccent,
      child: Text('Continue', style: TextStyle(color: Colors.white)),
    );

    final backToHomeButton = FlatButton(
      child: Text(
        'Back to login',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 32.0, right: 32.0),
          children: <Widget>[
            Header(label: 'Create an account'),
            SizedBox(height: 48.0),
            inputEmail,
            SizedBox(height: 8.0),
            inputPassword,
            SizedBox(height: 8.0),
            inputShopName,
            SizedBox(height: 32.0),
            registerButton,
            SizedBox(height: 16.0),
            backToHomeButton
          ],
        ),
      ),
    );
  }
}
