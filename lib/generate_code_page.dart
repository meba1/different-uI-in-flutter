import "package:flutter/material.dart";
import "package:pretty_qr_code/pretty_qr_code.dart";
import 'package:tesring/scan_code_page.dart';

class QRCodeGenerator extends StatefulWidget {
  const QRCodeGenerator({super.key});
  @override
  State<QRCodeGenerator> createState() => _GenerateCodePage();
}

class _GenerateCodePage extends State<QRCodeGenerator> {
  String? qrData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate QR code',
        style: TextStyle(
              color: Color.fromARGB(255, 85, 74, 35),
              fontWeight: FontWeight.bold,
              ),),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const QRcodeScanner()),
                );
            },
            icon: const Icon(Icons.qr_code_scanner),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(onSubmitted: (value) {
            setState(() {
              qrData = value;
            });
          },),
          if(qrData !=null)PrettyQrView.data(data: qrData!),
        ],
        ),
      ),
    );
   
   
  }
}
