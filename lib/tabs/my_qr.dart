import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyQr extends StatefulWidget {
  const MyQr({super.key});

  @override
  State<MyQr> createState() => _MyQrState();
}

class _MyQrState extends State<MyQr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(FontAwesomeIcons.times)),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              child: Image.asset('assets/img/khaltiLogoPurple.jpg'),
            ),
            Text(
              'My QR Code',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'show your QR Code to accept the payments',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/img/myQR.jpg'),
            ),
            Text(
              'SHRIJANA MAHARJAN',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '9863364568',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.share,
                  color: Colors.purple,
                ),
                SizedBox(width: 8),
                Text(
                  'SHARE QR CODE',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
