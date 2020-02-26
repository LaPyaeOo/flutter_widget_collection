import 'package:flutter/material.dart';

void main() {
  runApp(Expanded_tutorial());
}

class Expanded_tutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: My_home()
    );
  }
}
Widget tab_bar(){
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
Widget title(){
   return Expanded(
                flex: 1,
                child: Container(
                  child: Center(
                    child: Text(
                      'iFit COACH',
                      style: TextStyle(
                          fontSize: 28.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ));
}
Widget activity(){
   return Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  padding: EdgeInsets.only(left: 22.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Activity',
                    style: TextStyle(
                      letterSpacing: 5.0,
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                ));
}
Widget workouts(){
 return Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  padding: EdgeInsets.only(left: 22.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Workouts',
                    style: TextStyle(
                        letterSpacing: 5.0,
                        fontSize: 22.0,
                        color: Colors.white),
                  ),
                  color: Colors.amber,
                ));

}
Widget nutrition(){
  return Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  padding: EdgeInsets.only(left: 22.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nutrition',
                    style: TextStyle(
                        letterSpacing: 5.0,
                        fontSize: 22.0,
                        color: Colors.white),
                  ),
                  color: Colors.green,
                ));
}
Widget sleep(){
  return Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  padding: EdgeInsets.only(left: 22.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sleep',
                    style: TextStyle(
                        letterSpacing: 5.0,
                        fontSize: 22.0,
                        color: Colors.white),
                  ),
                  color: Colors.teal,
                ));
}
class My_home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            tab_bar(),
           activity(),
            workouts(),
           nutrition(),
           sleep()
          ],
        ),
      );
  }
}
