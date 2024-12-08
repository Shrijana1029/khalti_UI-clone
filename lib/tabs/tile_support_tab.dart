import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class TileForSupporTab extends StatelessWidget {
  final String name;
  final String icon;
  final String hinttext;
  TileForSupporTab(
      {required this.name, required this.icon, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ///Image is insid ethe container////
          Container(
            height: 30,
            width: 30,
            child: Image.asset(icon),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(name, style: Theme.of(context).textTheme.displayMedium),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(hinttext,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: Colors.grey as Color)),
          ),
        ],
      ),
    );
  }
}
