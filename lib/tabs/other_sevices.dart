import 'package:flutter/material.dart';

class OtherSevices extends StatefulWidget {
  final String title;
  OtherSevices({super.key, required this.title});

  @override
  State<OtherSevices> createState() => _OtherSevicesState();
}

class _OtherSevicesState extends State<OtherSevices> {
  List iconsList1 = [
    ["assets/img/images/Topup.png", "Topup"],
    ["assets/img/images/bulb.png", "electricity"],
    ["assets/img/images/tap.png", "Khanepani"],
    ["assets/img/images/in-love.png", "eSewa Care"],
    ["assets/img/images/internet.png", "Internet"],
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      color: const Color.fromARGB(255, 240, 240, 240),
      // color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Text(
              widget.title,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: iconsList1.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 100, // Adjust the width for spacing
                    child: Center(
                        child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            iconsList1[index][0],
                            color: Colors.purple,
                          ),
                        ),
                        Text(iconsList1[index][1])
                      ],
                    )),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
