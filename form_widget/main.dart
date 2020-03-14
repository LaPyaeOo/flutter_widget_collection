import 'package:flutter/material.dart';
import 'package:my_new_app/login_page.dart';

void main(){
  runApp(Starter());
}
class Starter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginPage(),
        theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}