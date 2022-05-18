import 'package:flutter/material.dart';
import 'package:agro/main.dart';

class Market extends StatelessWidget {
  const Market({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Center(
      child: Text(
        "Market",
        style: TextStyle(color: Colors.black),
      ),
    ));
  }
}
