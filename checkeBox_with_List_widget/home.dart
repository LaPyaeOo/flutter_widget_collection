import 'package:flutter/material.dart';
import 'package:my_new_app/list_display.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> peopleList = [
    {'id': 1, 'name': 'Mg Aye', 'phone': 0953345353},
    {'id': 2, 'name': 'Aye hla', 'phone': 0975432333},
    {'id': 3, 'name': 'Mya Aye', 'phone': 0965252743},
    {'id': 4, 'name': 'Daw Me', 'phone': '09554533753'},
    {'id': 5, 'name': 'lone war', 'phone': 090294621},
    {'id': 6, 'name': 'Wa lone', 'phone': '09-9404253'},
    {'id': 7, 'name': 'mi Aye', 'phone': 095036421},
    {'id': 8, 'name': 'Hla Aung aung', 'phone': 095339294},
    {'id': 9, 'name': 'Thar Aye', 'phone': 095338676},
    {'id': 10, 'name': 'ye ye myint', 'phone': '09533574'},
  ];

  List<Map<String, dynamic>> checkedList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List CheckBox'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: peopleList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(peopleList[index]['name']),
                      subtitle: Text(peopleList[index]['phone'].toString()),
                      trailing: peopleCheckBox(index),
                    ),
                  );
                }),
          ),
          routeButton(),
        ],
      ),
    );
  }

  Widget peopleCheckBox(int peopleIndex) {
    return Checkbox(
        value: checkedList.contains(peopleList[peopleIndex]),
        onChanged: (bool checkValue) {
          if (checkValue) {
            setState(() {
              checkedList.add(peopleList[peopleIndex]);
            });
          } else {
            setState(() {
              checkedList.remove(peopleList[peopleIndex]);
            });
          }
        });
  }

  Widget routeButton() {
    return FloatingActionButton(
      onPressed: () {
        _dataCarryAction();
      },
      child: Icon(Icons.arrow_forward_ios),
    );
  }

  _dataCarryAction() {
    return Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return ListDisplay(checkedList);
    }));
  }
}
