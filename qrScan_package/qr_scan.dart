import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class QRcodeScan extends StatefulWidget {
  @override
  _QRcodeScanState createState() => _QRcodeScanState();
}

class _QRcodeScanState extends State<QRcodeScan> {
  String result= 'QR result';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QRcode Scan'),
      ),
      body: Center(
        child: Text(result),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _qrScan,
        label: Text('Scan'),
        icon: Icon(Icons.camera_alt),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
 Future _qrScan() async{
  
   try {
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        result=qrResult ;
      });
   } on PlatformException catch(e){
     if(e.code==BarcodeScanner.CameraAccessDenied){
       setState(() {
         result= 'Camera permission denined';
       });
     }
     else{
       setState(() {
         result='Unknow Error';
       });
     }
   }

 }
}
