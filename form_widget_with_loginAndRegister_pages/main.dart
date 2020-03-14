import 'package:flutter/material.dart';
import 'package:my_new_app/login_page.dart';
import 'package:flutter/services.dart';


void main(){
  runApp(Starter());
}
class Starter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MaterialApp(
        home: LoginPage(),
        theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}