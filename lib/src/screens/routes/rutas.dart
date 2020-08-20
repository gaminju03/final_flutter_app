import 'package:flutter/cupertino.dart';

import 'package:final_flutter_app/src/screens/home_screen.dart';

Map<String, WidgetBuilder> getAplicationRouts() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomeScreen(),
    //'/actionsheet': (BuildContext context) => ContactoScreen(),
  };
}
