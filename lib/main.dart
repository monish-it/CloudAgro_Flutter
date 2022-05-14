import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: "navbar",
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
          style: TextStyle(color: Colors.white),
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
        style: TextStyle(color: Colors.white),
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
        style: TextStyle(color: Colors.white),
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
        style: TextStyle(color: Colors.white),
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
        style: TextStyle(color: Colors.white),
      ),
    ));
  }
}
