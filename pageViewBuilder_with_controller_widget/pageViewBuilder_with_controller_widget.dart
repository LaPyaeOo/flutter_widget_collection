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
    Food('Chicken', 'assets/chicken.jpg'),
    Food('Clam', 'assets/clam.jpg'),
    Food('Lobsters', 'assets/lobsters.jpg'),
    Food('apple', 'assets/apple.jpg'),
    Food('beef', 'assets/beef.jpg'),
    Food('duck', 'assets/duck.jpg'),
    Food('egg', 'assets/eggs.jpg')
  ];
  var pgController =PageController(viewportFraction: 0.7);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View Builder Widget'),
        ),
        body: PageView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                SizedBox(
                  child: Image.asset(foodList[index].img),
                  width: 200,
                  height: 500,
                ),
                Text(foodList[index].label)
              ],
            );
          },
          itemCount: foodList.length,
          scrollDirection: Axis.horizontal,
          controller: pgController,
        ),
      ),
    );
  }
}

class Food {
  String label;
  String img;
  Food(this.label, this.img);
}
