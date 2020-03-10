import 'package:flutter/material.dart';
import 'package:my_new_app/home.dart';

void main(List<String> args) {
  runApp(starter());
}

class starter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}