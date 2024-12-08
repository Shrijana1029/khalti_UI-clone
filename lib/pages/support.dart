import 'package:flutter/material.dart';
import 'package:my_khalti/tabs/tile_support_tab.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' '),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Help & Support',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(color: Colors.purple),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Customer Support, Feedbacks & FAQs',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                TileForSupporTab(
                    name: 'Facebook Messenger',
                    icon: 'assets/icons/messenger.png',
                    hinttext: ''),
                TileForSupporTab(
                    name: '01-25678777',
                    icon: 'assets/icons/old-phone.png',
                    hinttext: '(Toll_Free)'),
                TileForSupporTab(
                    name: '985445234',
                    icon: 'assets/icons/whatsapp.png',
                    hinttext: 'WhatsApp-Only chat'),
                TileForSupporTab(
                    name: 'khalti.com/Viber',
                    icon: 'assets/icons/viber.png',
                    hinttext: '(Chat Only)'),
                TileForSupporTab(
                    name: 'support@khalti.com',
                    icon: 'assets/icons/old-phone.png',
                    hinttext: 'Email Us'),
                TileForSupporTab(
                    name: '1111111111111111',
                    icon: 'assets/icons/old-phone.png',
                    hinttext: 'LandLine'),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.info_outline),
                  title: Text('FAQs'),
                  subtitle: Text('Get help from FAQs'),
                  trailing: Icon(Icons.more_vert_sharp),
                ),
                const ListTile(
                  leading: Icon(Icons.info_outline),
                  title: Text('Report Issues'),
                  subtitle: Text('We would love to see '),
                  trailing: Icon(Icons.more_vert_sharp),
                ),
              ],
            ),
          ),
        ));
  }
}
