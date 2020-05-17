import 'package:flutter/material.dart';
import 'package:signinpage/Page/Login.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Login', home: Login());
  }
}
