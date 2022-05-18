import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:agro/navbar/navbar.dart';
import 'package:agro/Signin.dart';

void main() {
  runApp(MaterialApp(home: const Signin(), routes: <String, WidgetBuilder>{
    "/Homepage": (BuildContext context) => const Navbar()
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      // onGenerateTitle: null,
      home: Navbar(),
    );
  }
}
