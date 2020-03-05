import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(AddListView());
}

class AddListView extends StatefulWidget {
  @override
  _AddListViewState createState() => _AddListViewState();
}

class _AddListViewState extends State<AddListView> {
  List<String> peopleName = [];
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Show people from List View'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Enter People Name',
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  String name = nameController.text;
                  peopleName.add(name);
                });
              },
              child: Text('Add'),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Text(peopleName[index]),
                  );
                },
                itemCount: peopleName.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
