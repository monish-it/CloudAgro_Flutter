import 'package:agro/main.dart';
import 'package:flutter/material.dart';

class Map extends StatelessWidget {
  const Map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Center(
      child: Text(
        "Map",
        style: TextStyle(color: Colors.black),
      ),
    ));
  }
}
