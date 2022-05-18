import 'package:agro/main.dart';
import 'package:agro/navbar/navbar.dart';
import 'package:flutter/material.dart';

class Notify extends StatelessWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Center(
      child: Text(
        "Notification",
        style: TextStyle(color: Colors.black),
      ),
    ));
  }
}
