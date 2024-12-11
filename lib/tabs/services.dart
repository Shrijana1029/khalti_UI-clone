import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 9),
        child: Column(
          children: [
            Row(
              children: [
                _serviceIcons(),
                _serviceIcons(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _serviceIcons() {
    return Container(
      child: Column(
        children: [
          Text('icon'),
          Text('icon'),
        ],
      ),
    );
  }
}
