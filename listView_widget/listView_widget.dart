import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ListViewBuilderWidget());
}

class ListViewBuilderWidget extends StatefulWidget {
  @override
  _ListViewBuilderWidgetState createState() => _ListViewBuilderWidgetState();
}

class _ListViewBuilderWidgetState extends State<ListViewBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View Builder Widget'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Image.asset('assets/apple.jpg'),
            Image.asset('assets/beef.jpg'),
            Image.asset('assets/chicken.jpg'),
            Image.asset('assets/clam.jpg'),
            Image.asset('assets/duck.jpg'),
            Image.asset('assets/eggs.jpg'),
            Image.asset('assets/lobsters.jpg'),
          ],
        ),
      ),
    );
  }
}