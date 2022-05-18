import 'package:flutter/material.dart';
import 'package:agro/main.dart';

class Plantdb extends StatelessWidget {
  const Plantdb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text(
          "PlantDB",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
