// import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';
import 'dart:typed_data';
// import 'package:typed_data/typed_data.dart';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:my_khalti/tabs/my_qr.dart';

class QrPage extends StatefulWidget {
  const QrPage({super.key});

  @override
  State<QrPage> createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  bool isScanCompleted = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(''),
      ),
      body: Padding(
          padding: const EdgeInsets.all(58.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/img/khaltiLogo.png'),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Scan & Pay',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Please align th QR within the frame',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 25,
                ),
                ////////////SCANNING SECTION////
                Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.6,
                    color: Colors.white,
                    child: MobileScanner(
                      controller: MobileScannerController(
                        detectionSpeed: DetectionSpeed.noDuplicates,
                        //returns an images
                        returnImage: true,
                      ),
                      onDetect: (capture) {
                        ///store the value that has been captured by caputure of onDetect
                        final List<Barcode> barcodes = capture.barcodes;
                        // Unitlistis dart type normally used to store binary data like, images, audio
                        final Uint8List? image = capture.image;
                        for (final barcode in barcodes) {
                          print('Barcode found!! ${barcode.rawValue}');
                        }
                        //rawvalue = the info that qr code has been captured
                        if (image != null) {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                  title: Text(
                                    barcodes.first.rawValue ?? '',
                                  ),
                                  content: Image.asset('assets/img/baby.jpg')));
                        }
                      },
                    )),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.qr_code),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyQr()));
                          },
                          child: Text('SHOW MY QR CODE'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
