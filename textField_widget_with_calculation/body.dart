import 'package:flutter/material.dart';

class CalculatorBody extends StatefulWidget {
  @override
  _CalculatorBodyState createState() => _CalculatorBodyState();
}

class _CalculatorBodyState extends State<CalculatorBody> {
  double result=0;

  TextEditingController firstTextFieldController = TextEditingController();
  TextEditingController secondTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: applicationBar(),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(5),
                  child: firstTextField('Enter first number', firstTextFieldController)),
              Container(
                  margin: EdgeInsets.all(5),
                  child: secondTextField('Enter second number', secondTextFieldController)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    onPressed: (){
                      _add();
                    },
                    child: Icon(Icons.add),
                  ),
                  RaisedButton(
                    onPressed: (){
                      _sub();
                    },
                    child: Icon(Icons.minimize),
                  ),
                  RaisedButton(
                    onPressed: (){
                      _multiple();
                    },
                    child: Icon(Icons.close),
                  ),
                  RaisedButton(
                    onPressed: (){
                      _division();
                    },
                    child: Icon(Icons.code),
                  )
                ],
              ),
              Text("$result",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue))
            ],
          ),
        ));
  }

  Widget applicationBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.all_inclusive,
            size: 29,
          ),
          Text(
            'Calculator',
            style: TextStyle(
                color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget firstTextField(String inputHint, var firstTextCtrl) {
    return TextField(
      keyboardType: TextInputType.number,
      controller: firstTextCtrl,
      decoration: InputDecoration(hintText: '$inputHint'),
    );
  }

  Widget secondTextField(String inputHint,var secondTextCtrl) {
    return TextField(
      keyboardType: TextInputType.number,
      controller: secondTextCtrl,
      decoration: InputDecoration(hintText: '$inputHint'),
    );
  }

 
  _add() {
    String firstTxt = firstTextFieldController.text;
    String secondTxt = secondTextFieldController.text;
    double firstNum = double.parse(firstTxt);
    double secondNum = double.parse(secondTxt);
   setState(() {
     result= firstNum+secondNum;
   });
  }

  _sub() {
    String firstTxt = firstTextFieldController.text;
    String secondTxt = secondTextFieldController.text;
    double firstNum = double.parse(firstTxt);
    double secondNum = double.parse(secondTxt);
    setState(() {
      result = firstNum - secondNum;
    });
  }

  _multiple() {
    String firstTxt = firstTextFieldController.text;
    String secondTxt = secondTextFieldController.text;
    double firstNum = double.parse(firstTxt);
    double secondNum = double.parse(secondTxt);
    setState(() {
      result = firstNum * secondNum;
    });
  }

  _division() {
    String firstTxt = firstTextFieldController.text;
    String secondTxt = secondTextFieldController.text;
    double firstNum = double.parse(firstTxt);
    double secondNum = double.parse(secondTxt);
    setState(() {
      result = firstNum / secondNum;
    });
  }
}
