import 'package:flutter/material.dart';

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

    final registerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 32.0),
      child: Material(
        borderRadius: BorderRadius.circular(4.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 2.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 48.0,
          onPressed: () {},
          color: Colors.lightBlueAccent,
          child: Text('Register', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      child: Column(
        children: <Widget>[
          inputEmail,
          inputPassword,
          inputShopName,
          registerButton
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: body,
    );
  }
}
