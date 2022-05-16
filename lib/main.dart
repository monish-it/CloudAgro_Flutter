import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(MaterialApp(home: const Signin(), routes: <String, WidgetBuilder>{
    "/Homepage": (BuildContext context) => const HomePage()
  }));
  // runApp(const Signin());
}

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount? user = _googleSignIn.currentUser;
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/login/bg.png"),
                  fit: BoxFit.fill,
                ),
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(20),
                //   bottomRight: Radius.circular(20),
                // ),
              ),
              height: 450,
              // child: Text("Welcome"),
            ),
            SizedBox(
              width: 370,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      const TextSpan(
                        text: "Welcome \nTo",
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.black,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      TextSpan(
                        text: " Cloud Agro",
                        style: TextStyle(
                          fontSize: 45,
                          fontFamily: 'Nunito',
                          foreground: Paint()
                            ..shader = const LinearGradient(
                              colors: <Color>[
                                Color.fromRGBO(93, 170, 0, 1),
                                Color.fromRGBO(209, 251, 89, 1)
                              ],
                            ).createShader(
                              const Rect.fromLTRB(100, 0, 300, 0),
                            ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(
                "Contribute to your agro community through this internet of modern Agriculture",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            TextButton(
              onPressed: user != null
                  ? null
                  : () async {
                      await _googleSignIn.signIn();
                      setState(() {});
                      Navigator.of(context).pushNamed("/Homepage");
                    },
              child: const Text(
                'Join Now',
                style: TextStyle(fontFamily: 'Nunito', fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      // onGenerateTitle: null,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/images/navbar/plant.png"),
              backgroundColor: Colors.transparent,
            ),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/images/navbar/market.png"),
              backgroundColor: Colors.transparent,
            ),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/images/navbar/home.png"),
              backgroundColor: Colors.transparent,
            ),
          ),
          BottomNavigationBarItem(
            // icon: Icon(Icons.shopping_cart),
            icon: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/images/navbar/notification.png"),
              backgroundColor: Colors.transparent,
            ),
          ),
          BottomNavigationBarItem(
            // icon: ImageIcon(
            //   AssetImage("assets/images/navbar/map.png"),
            // ),
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/images/navbar/map.png"),
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
        height: 60,
        // border: BorderRadius.circular(20),
        backgroundColor: const Color.fromRGBO(153, 255, 130, 1),
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Page1(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Page2(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Page3(),
              );
            });
          case 3:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Page4(),
              );
            });
          case 4:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Page5(),
              );
            });
          default:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: Page1(),
                );
              },
            );
        }
      },
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text(
          "Grid",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

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

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

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

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

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
