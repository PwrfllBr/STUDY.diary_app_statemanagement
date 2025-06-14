import 'package:flutter/widgets.dart';
//importamos las pantallas desde el archivo screens en lugar de importarlas una a una
import '../screens/screens.dart';

class AppRoutes {
  static String initialRoute = 'homeScreen';

  //Los mmaps son parecidos a los diccionarios
  //se basan en pares clave-valor
  //como en un json
  static Map<String, Widget Function(BuildContext)> getRoutes = {
    'homeScreen': (BuildContext context) => HomeScreen(),
    'createNoteScreen': (BuildContext context) => CreateNoteScreen()
  };
}