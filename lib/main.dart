import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:agro/navbar/navbar.dart';
import 'package:agro/Signin.dart';

void main() {
  runApp(MaterialApp(home: const Signin(), routes: <String, WidgetBuilder>{
    "/Homepage": (BuildContext context) => const Navbar()
  }));
  // runApp(const Signin());
}

// class Signin extends StatefulWidget {
//   const Signin({Key? key}) : super(key: key);

//   @override
//   State<Signin> createState() => _SigninState();
// }

// class _SigninState extends State<Signin> {
//   final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

//   @override
//   Widget build(BuildContext context) {
//     GoogleSignInAccount? user = _googleSignIn.currentUser;
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             Container(
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage("assets/images/login/bg.png"),
//                   fit: BoxFit.fill,
//                 ),
//                 // borderRadius: BorderRadius.only(
//                 //   bottomLeft: Radius.circular(20),
//                 //   bottomRight: Radius.circular(20),
//                 // ),
//               ),
//               height: 450,
//               // child: Text("Welcome"),
//             ),
//             SizedBox(
//               width: 370,
//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
//                 child: RichText(
//                   text: TextSpan(
//                     children: <TextSpan>[
//                       const TextSpan(
//                         text: "Welcome \nTo",
//                         style: TextStyle(
//                           fontSize: 45,
//                           color: Colors.black,
//                           fontFamily: 'Nunito',
//                         ),
//                       ),
//                       TextSpan(
//                         text: " Cloud Agro",
//                         style: TextStyle(
//                           fontSize: 45,
//                           fontFamily: 'Nunito',
//                           foreground: Paint()
//                             ..shader = const LinearGradient(
//                               colors: <Color>[
//                                 Color.fromRGBO(93, 170, 0, 1),
//                                 Color.fromRGBO(209, 251, 89, 1)
//                               ],
//                             ).createShader(
//                               const Rect.fromLTRB(100, 0, 300, 0),
//                             ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
//               child: Text(
//                 "Contribute to your agro community through this internet of modern Agriculture",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontFamily: 'Nunito',
//                   fontWeight: FontWeight.w100,
//                 ),
//                 textAlign: TextAlign.justify,
//               ),
//             ),
//             TextButton(
//               onPressed: user != null
//                   ? null
//                   : () async {
//                       await _googleSignIn.signIn();
//                       setState(() {});
//                       Navigator.of(context).pushNamed("/Homepage");
//                     },
//               child: const Text(
//                 'Join Now',
//                 style: TextStyle(fontFamily: 'Nunito', fontSize: 20),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

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
