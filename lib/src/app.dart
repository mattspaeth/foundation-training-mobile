import 'package:flutter/material.dart';
import './pages/auth.dart';
import './services/hexcolor.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: HexColor("#33aacd"),
        primaryTextTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: AuthPage(),
    );
  }
}
