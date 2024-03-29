import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({super.key});

  @override
  State<QrCodePage> createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  @override
  Widget build(BuildContext context) {

    String ticket = '';

    readQRCode() async {
      String code = await FlutterBarcodeScanner.scanBarcode('#FFFFFF', 'Cancel', false, ScanMode.QR);

      // colocar as instruções em um try catch
      ticket = code != '-1' ? code : 'Invalid';

      setState(() {
        ticket;
      });

      print('CODE $code');
      print('TICKET $ticket');
    }

    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 200,
              child: ElevatedButton.icon(
                  onPressed: readQRCode,
                  icon: const Icon(
                    Icons.qr_code,
                    color: Colors.pinkAccent,
                  ),
                  label: const Text(
                    'Validate',
                    style: TextStyle(color: Colors.pinkAccent),
                  )),
            ),

          ],
        ),
      ),
    );
  }
}
