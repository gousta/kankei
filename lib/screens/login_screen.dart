import 'package:flutter/material.dart';
import 'package:kankei/screens/home_screen.dart';
import 'package:kankei/screens/register_screen.dart';
import 'package:kankei/widgets/header_widget.dart';
import 'package:kankei/widgets/kankei_flat_button_widget.dart';
import 'package:kankei/widgets/kankei_material_button_widget.dart';

class LoginScreen extends StatefulWidget {
  static String tag = 'login-screen';
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // final logo = Hero(
    //   tag: 'hero',
    //   child: CircleAvatar(
    //     backgroundColor: Colors.transparent,
    //     radius: 48.0,
    //     child: Image.asset('assets/logo.png'),
    //   ),
    // );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(3.0)),
      ),
    );

    final password = TextFormField(
      obscureText: true,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(3.0)),
      ),
    );

    final loginButton = KankeiMaterialButton(
        label: 'Log In',
        onPressed: () => Navigator.of(context).pushNamed(HomeScreen.tag));

    final goToRegisterButton = KankeiFlatButton(
        onPressed: () => Navigator.of(context).pushNamed(RegisterScreen.tag),
        label: 'Create an account');

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 32.0, right: 32.0),
          children: <Widget>[
            Header(label: 'Log In'),
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            SizedBox(height: 16.0),
            goToRegisterButton
          ],
        ),
      ),
    );
  }
}
