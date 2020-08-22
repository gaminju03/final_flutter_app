import 'package:flutter/cupertino.dart';
import 'package:final_flutter_app/src/home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Cupertino App',
      home: HomeScreen(),
    );
  }
}
