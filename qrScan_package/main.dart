import 'package:flutter/material.dart';
import 'package:my_new_app/qr_scan.dart';

void main(){
  runApp(Starter());
}

class Starter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QRcodeScan(),
    );
  }
}