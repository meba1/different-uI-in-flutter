import "dart:typed_data";

import "package:flutter/material.dart";
import "package:mobile_scanner/mobile_scanner.dart";

class QRcodeScanner extends StatefulWidget {
  const QRcodeScanner({super.key});
  @override
  State<QRcodeScanner> createState() => _ScanCodePage();
}

class _ScanCodePage extends State<QRcodeScanner> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: const Text(
          'Scan QR Code',
          style: TextStyle(
              color: Color.fromARGB(255, 85, 74, 35),
              fontWeight: FontWeight.bold,
              ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              //do navigation to generate code
            },
            icon: const Icon(Icons.qr_code),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(height: MediaQuery.of(context).size.height*0.6,
              child: MobileScanner(
          controller: MobileScannerController(
              detectionSpeed: DetectionSpeed.normal, returnImage: true),
          onDetect: (capture) {
            final List<Barcode> barcodes = capture.barcodes;
            final Uint8List? image = capture.image;
            for (final barcode in barcodes) {
              print('bar code is found! ${barcode.rawValue}');
            }
            if (image != null) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        barcodes.first.rawValue ?? "",
                      ),
                      content: Image(
                        image: MemoryImage(image),
                      ),
                    );
                  });
            }
          }
          ),
            ),
            Container(child: Container(
              color: Colors.blue,
            ),
            ),
          ],
        )
      ),
      
    ));
  }
}
