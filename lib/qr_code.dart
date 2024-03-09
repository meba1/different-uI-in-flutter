import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRcodeRead extends StatefulWidget {
  @override
  _QRcodeRead createState() => _QRcodeRead();
}

class _QRcodeRead extends State<QRcodeRead> {
  Barcode? result;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 4,
          child: QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
          ),
        ),
        Expanded(
            child: Center(
          child: Text('Scanned data: ${result?.code}'),
        ))
      ],
    ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller =controller;
    controller.scannedDataStream.listen((scanData) { 
      setState(() {
        result = scanData;
      });
    });
    }
      @override
      void dispose(){
        controller?.dispose();
        super.dispose();
      }
}
