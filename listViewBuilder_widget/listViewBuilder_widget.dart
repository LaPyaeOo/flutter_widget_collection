import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ListVBuilderWidget());
}

class ListVBuilderWidget extends StatefulWidget {
  @override
  _ListVBuilderWidgetState createState() => _ListVBuilderWidgetState();
}

class _ListVBuilderWidgetState extends State<ListVBuilderWidget> {
  List<Food> foodList = [
    Food('Chicken','assets/chicken.jpg'),
    Food('Clam','assets/clam.jpg'),
    Food('Lobsters','assets/lobsters.jpg'),
    Food('apple','assets/apple.jpg'),
    Food('beef','assets/beef.jpg'),
    Food('duck','assets/duck.jpg'),
    Food('egg','assets/eggs.jpg')
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View Builder Widget'),
        ),
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return Card(
                      child: Column(
              children: <Widget>[
                Image.asset(foodList[index].img),
                Text(foodList[index].label)
              ],
            ),
          );
        },itemCount: foodList.length,),
      ),
    );
  }
}

class Food{
  String label;
  String img;
  Food(this.label,this.img);
}
