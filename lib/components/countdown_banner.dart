import 'package:flutter/material.dart';

class CountdownBanner extends StatelessWidget {
  final int daysLeft;

  const CountdownBanner({Key? key, required this.daysLeft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.orange.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.timer, color: Colors.orange),
          SizedBox(width: 8),
          Text("Masa trial tersisa $daysLeft hari"),
        ],
      ),
    );
  }
}
