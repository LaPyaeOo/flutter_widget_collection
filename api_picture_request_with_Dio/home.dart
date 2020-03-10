import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int albumnId = 1;
  Dio dio = Dio();
  Future<List> resultData;

  Future<List> getData() async {
    var responseData =
        await dio.get('https://jsonplaceholder.typicode.com/photos/');
    return responseData.data;
  }

  @override
  void initState() {
    resultData = getData();
    print(resultData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Column(
        children: <Widget>[
          FutureBuilder(
              initialData: [],
              future: resultData,
              builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: Column(
                              children: <Widget>[
                                Image.network(snapshot.data[index]['url']),
                                Text(snapshot.data[index]['title'])
                              ],
                            ),
                          );
                        }),
                  );
                } else if (snapshot.hasError) {
                  return Text('Error');
                }
                return null;
              })
        ],
      ),
    );
  }
}

Widget customAppBar() {
  return AppBar(
    backgroundColor: Colors.redAccent,
    leading: Icon(Icons.android),
    title: Text('Picture API'),
    actions: <Widget>[
      PopupMenuButton(itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(child: Text('One')),
          PopupMenuItem(child: Text('Two'))
        ];
      })
    ],
  );
}
