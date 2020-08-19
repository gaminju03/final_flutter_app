import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_flutter_app/src/screens/contacto.dart';
import 'package:final_flutter_app/src/screens/routes/rutas.dart';

import 'package:final_flutter_app/src/screens/inicio.dart';
//import 'package:proyecto_flutter/src/screens/contacto.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              title: Text('Inicio'),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.share_up),
              title: Text('Contactanos'),
            ),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
              routes: getAplicationRouts(),
              builder: (context) {
                switch (index) {
                  case 0:
                    return WidgetsScreen();
                  case 1:
                    return ContactoScreen();
                }
                return WidgetsScreen();
              });
        });
  }
}
