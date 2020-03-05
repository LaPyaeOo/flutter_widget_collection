import'package:flutter/material.dart';
void main(){
  runApp(ImageWidget());
}

class ImageWidget extends StatefulWidget {
  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {

  List <String>imgList = ['assets/chicken.jpg','assets/clam.jpg','assets/lobsters.jpg'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Widget'),
        ),
        body: Column(
          children: <Widget>[
            Container(child: Image.asset(imgList[0]),width: 200,height: 200,),
            Container(child: Image.asset(imgList[2]),width: 200,height: 200,),
            Container(child: Image.asset(imgList[1]),width: 200,height: 200,),
            //  Image.network('Link'),  From Online image link
          ],
        ),
      ),
    );
  }
}