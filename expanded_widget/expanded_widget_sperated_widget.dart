import 'package:flutter/material.dart';

void main() {
  runApp(ExpandedTutorial());
}

class ExpandedTutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome() //My home object
        );
  }
}

// Expanded Widget methods
Widget tabBar() {
  return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Today\'s plan',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 18.0,
            ),
          )
        ],
      ));
}

Widget title() {
  return Expanded(
      flex: 1,
      child: Container(
        child: Center(
          child: Text(
            'iFit COACH',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          ),
        ),
      ));
}

Widget myWidget(String txt,Color cardColor) {
  return Expanded(
      flex: 2,
      child: Container(
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.only(left: 22.0),
        alignment: Alignment.centerLeft,
        child: Text(
          txt,
          style: TextStyle(
              letterSpacing: 5.0, fontSize: 22.0, color: Colors.white),
        ),
        color: cardColor,
      ));
}

//My home Class
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Container(
          child: Text('Sport'),
          alignment: Alignment.center,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          title(),
          tabBar(),
          myWidget('ACTIVITY', Colors.cyan),
          myWidget('WORKOUT', Colors.amber),
          myWidget('NUTRITION', Colors.green),
          myWidget('SLEEP', Colors.teal)
        ],
      ),
    );
  }
}

