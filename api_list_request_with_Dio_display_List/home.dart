import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_new_app/list_display.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String urlApi = 'https://jsonplaceholder.typicode.com/users';
  Future<List> getData;
  AsyncSnapshot<List> snapshot;
  List<Map<String, dynamic>> checkedData = [{}];

  Future<List> getAPI() async {
    Response responseData = await Dio().get(urlApi);

    return responseData.data;
  }

  @override
  void initState() {
    getData = getAPI();
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
              future: getData,
              builder: (BuildContext context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                                    return ListDisplay(snapshot.data[index]['id'].toString());
                                  }));
                                },
                                child: Card(
                                    child: ListTile(
                                  leading: CircleAvatar(
                                    child: Text(
                                        snapshot.data[index]['id'].toString()),
                                  ),
                                  title: Text(
                                    snapshot.data[index]['name'].toString(),
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(snapshot.data[index]
                                          ['username']
                                      .toString()),
                                )),
                              )
                            ],
                          );
                        }),
                  );
                } else if (snapshot.hasError) {
                  return Text('Error');
                }
                return null;
              }),
        ],
      ),
    );
  }

  Widget customAppBar() {
    return AppBar(
      title: Text(
        'API Lesson',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }

  // Widget customOutLineButton(){
  //   return OutlineButton(onPressed: _buttonDataCarry);
  // }
  // _buttonDataCarry(){

  // }
}
