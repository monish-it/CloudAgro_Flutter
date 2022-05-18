import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:agro/main.dart';
import 'package:agro/pages/Plantdb.dart';
import 'package:agro/pages/Market.dart';
import 'package:agro/pages/Home.dart';
import 'package:agro/pages/Notify.dart';
import 'package:agro/pages/Map.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

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
                child: Plantdb(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Market(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Home(),
              );
            });
          case 3:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Notify(),
              );
            });
          case 4:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Map(),
              );
            });
          default:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: Home(),
                );
              },
            );
        }
      },
    );
  }
}
