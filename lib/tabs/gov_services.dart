import 'package:flutter/material.dart';

class GovServices extends StatefulWidget {
  const GovServices({super.key});

  @override
  State<GovServices> createState() => _GovServicesState();
}

class _GovServicesState extends State<GovServices> {
  List imageList = [
    ["assets/img/images/ntc.jpg", "NTC vacancy"],
    ["assets/img/images/nepal_logo.png", "Bluebook Renew"],
    ["assets/img/images/Tr.jpg", "Traffic Police Fine Payment"],
    [
      "assets/img/images/ssf.jpg",
      "Social Security Fund",
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: const Color.fromARGB(255, 240, 240, 240),
      child: Column(
        children: [
          Text(
            'Government Services',
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(imageList[index][0]),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            imageList[index][1],
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ],
                      ));
                }),
          )
        ],
      ),
    );
  }
}
