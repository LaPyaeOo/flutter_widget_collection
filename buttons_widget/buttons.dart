import 'package:flutter/material.dart';

void main() {
  runApp(MyButton());
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Container(
          child: Text('Buttons'),
          alignment: Alignment.center,
        )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              count.toString(),
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
              textAlign: TextAlign.center,
            ),

            //Button
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                 
                  FlatButton( 
                    onPressed: () {
                      setState(() {
                        count--;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.account_box),
                        Text('Delete')
                      ],
                    )
                  ),  //Flat Button

                  RaisedButton(onPressed: (){
                    setState(() {
                      count++;
                    });
                  },child: Text('Add'),), //RaisedButton

                   FloatingActionButton( 
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Icon(Icons.add),
                  ),  //FloatingActionButton

                  OutlineButton(onPressed: (){
                    setState(() {
                      count=count+2;
                    });
                  },child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.looks_two),
                      Text('Add Two')
                    ],
                  ),) //OutlineButton
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
