import 'package:flutter/material.dart';
import 'package:agro/main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Center(
      child: Text(
        "Home",
        style: TextStyle(color: Colors.black),
      ),
    ));
  }
}
