import 'package:flutter/material.dart';

class ListDisplay extends StatelessWidget {
  List<Map<String, dynamic>> checkedData = [];
  ListDisplay(this.checkedData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Second Page'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  itemCount: checkedData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Card(
                                child: Text(
                                    checkedData[index]['name'].toString())),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: 'Enter Amount',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                                  )),
                            ),
                            SizedBox(height: 20)
                          ],
                        ),
                      ],
                    );
                  }),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back_ios),
            ),
            Text('')
          ],
        ));
  }
}
