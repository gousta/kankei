import 'package:flutter/material.dart';
import 'package:kankei/screens/home_screen.dart';
import 'package:kankei/screens/login_screen.dart';
import 'package:kankei/screens/register_screen.dart';

void main() => runApp(Kankei());

class Kankei extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginScreen.tag: (context) => LoginScreen(),
    HomeScreen.tag: (context) => HomeScreen(),
    RegisterScreen.tag: (context) => RegisterScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Kankei App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: LoginScreen(),
      routes: routes,
    );
  }
}
