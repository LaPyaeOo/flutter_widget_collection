import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pOneScore = 0;
  int pTwoScore = 0;
  String result = 'Draw';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Score Board',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Text(
            '$result',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'Player 1',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'Player 2',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  '$pOneScore',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  '$pTwoScore',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: FlatButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        addP1One();
                        checkresult();
                      },
                      child: Text('+1')),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: FlatButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        addP2One();
                        checkresult();
                      },
                      child: Text('+1')),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: FlatButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        addP1Two();
                        checkresult();
                      },
                      child: Text('+2')),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: FlatButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        addP2Two();
                        checkresult();
                      },
                      child: Text('+2')),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  addP1One() {
    setState(() {
      this.pOneScore++;
    });
  }

  addP2One() {
    setState(() {
      this.pTwoScore++;
    });
  }

  addP1Two() {
    setState(() {
      pOneScore = pOneScore + 2;
    });
  }

  addP2Two() {
    setState(() {
      pTwoScore = pTwoScore + 2;
    });
  }

  reset() {
    setState(() {
      pOneScore = 0;
      pTwoScore = 0;
    });
  }

  checkresult() {
    if (pOneScore > pTwoScore) {
      setState(() {
        this.result = 'Winner is player one';
      });
    } else if (pOneScore < pTwoScore) {
      setState(() {
        this.result = 'Winner is player two';
      });
    } else {
      setState(() {
        this.result = 'Draw';
      });
    }
  }
}
