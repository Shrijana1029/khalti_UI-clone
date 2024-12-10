import 'package:flutter/material.dart';
import 'package:my_khalti/pages/dashboard.dart';
import 'package:my_khalti/pages/home.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Icon(Icons.arrow_back),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.download,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Transaction History',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(color: Colors.purple),
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                'Showing the transaction of last 30 days',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/img/notifi.jpg',
                    fit: BoxFit.cover,
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                            'Sorry, No Transaction History in last  30 days',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(color: Colors.purple)))
                  ],
                ),
              ),
              //make a button with modify search
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(9),
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(4)),
                child: const Center(
                    child: Text(
                  "MODIFY SEARCH",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
        ));
  }
}
