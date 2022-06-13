import 'package:flutter/material.dart';
// import 'package:agro/main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: GridPaper(
          color: Colors.blue,
          divisions: 2,
          interval: 200,
          subdivisions: 10,
        ),
      ),
    );
  }
}
