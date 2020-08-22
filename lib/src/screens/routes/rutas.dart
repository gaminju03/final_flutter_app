import 'package:flutter/cupertino.dart';

import 'package:final_flutter_app/src/screens/material/actividad_uno.dart';
import 'package:final_flutter_app/src/home_screen.dart';
import 'package:final_flutter_app/src/screens/material/tareas.dart';
import 'package:final_flutter_app/src/screens/material/docuemntos.dart';
import 'package:final_flutter_app/src/screens/material/lista.dart';

Map<String, WidgetBuilder> getAplicationRouts() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomeScreen(),
    '/actividaduno': (BuildContext context) => ActividadUno(),
    '/tareas': (BuildContext context) => Tareas(),
    '/documentos': (BuildContext context) => Documentos(),
    '/lista': (BuildContext context) => Lista(),
  };
}
