import 'package:flutter/material.dart';
import 'package:my_khalti/tabs/automatic_scroll.dart';
import 'package:my_khalti/tabs/gov_services.dart';
import 'package:my_khalti/tabs/myappbar.dart';
import 'package:my_khalti/tabs/other_sevices.dart';
import 'package:my_khalti/tabs/services.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Myappbar(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Recharge & Bill Payments',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            ///////services
            ////////////////////// Services(),
            Container(
              color: Colors.grey[300],
              height: 10,
            ),
            OtherSevices(title: 'Others Services'),
            Container(
              color: Colors.grey[300],
              height: 10,
            ),
            OtherSevices(title: 'Featured Services'),
            Container(
              color: Colors.grey[300],
              height: 10,
            ),
            AutomaticScroll(),
            ///////footer     ///////////
            Container(
              color: Colors.grey[300],
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('khalti Healp & Support'),
                    subtitle:
                        Text('Facing Problem? Get quick help and support'),
                  ),
                  const Divider(),
                  const ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('Secure khalti app and transactions'),
                    subtitle:
                        Text('Facing Problem? Get quick help and support'),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.grey[300],
              height: 20,
            ),

            GovServices(),
            Container(
              color: Colors.grey[300],
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
