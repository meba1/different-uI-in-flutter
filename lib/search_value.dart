import 'package:flutter/material.dart';
import 'package:tesring/qr_code.dart';

class scanned_result extends StatefulWidget {
  @override
  _scanned_result createState() => _scanned_result();
}

class _scanned_result extends State<scanned_result> {
  TextEditingController _textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scanned result'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _textFieldController,
            decoration: InputDecoration(
              labelText: 'Value from QR',
            ),
          ),
          ElevatedButton(
          child: Text('Scan QR code'),
          onPressed: ()async{
            String? scannedvalue = await Navigator.push(context, MaterialPageRoute(builder: (context)=>QRcodeRead(),),);
            if(scannedvalue !=null){
              setState(() {
                _textFieldController.text =scannedvalue;
              });
            }
          }, 
          )
        ],
      ),
    );

    // TODO: implement build
    throw UnimplementedError();
  }
}
