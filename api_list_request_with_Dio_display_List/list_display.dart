import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ListDisplay extends StatefulWidget {
  String idData;
  ListDisplay(this.idData);
  @override
  _ListDisplayState createState() => _ListDisplayState();
}

class _ListDisplayState extends State<ListDisplay> {
  Future<Map<String, dynamic>> userInformation;

  Future<Map<String, dynamic>> receiveTapData() async {
    var responseData = await Dio()
        .get('https://jsonplaceholder.typicode.com/users/${widget.idData}');
    return responseData.data;
  }

  @override
  void initState() {
    userInformation = receiveTapData();
    super.initState();
  }

  Map<String, dynamic> forInitialState = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Display List',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Column(
        children: <Widget>[
          FutureBuilder(
              initialData: forInitialState,
              future: userInformation,
              builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
                Map<String, dynamic> resultData = snapshot.data;
                return snapshot.data['name'] == null
                    ? Center(child: CircularProgressIndicator())
                    : Card(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.person),
                                Text(resultData['name'])
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.email),
                                Text(resultData['email'])
                              ],
                            ),
                          ],
                        ),
                      );
              })
        ],
      ),
    );
  }
}
