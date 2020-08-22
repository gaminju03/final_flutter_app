import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:final_flutter_app/src/principal/contacto.dart';
import 'package:final_flutter_app/src/screens/routes/rutas.dart';
import 'package:final_flutter_app/src/principal/inicio.dart';
import 'package:final_flutter_app/src/principal/material.dart';

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
              icon: Icon(CupertinoIcons.folder_open),
              title: Text('Material'),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.phone_solid),
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
                    return MaterialScreen();
                  case 2:
                    return ContactoScreen();
                  //return FirestoreCRUDPage();
                }
                return WidgetsScreen();
              });
        });
  }
}
