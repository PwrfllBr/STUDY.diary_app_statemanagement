import 'package:diary_app_statemanagement/providers/note_provider.dart';
import 'package:diary_app_statemanagement/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<NoteProvider>(create: (_) => NoteProvider()),
    ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 207, 195, 91)),
        ),
        //En vez de tener home, usamos routes
        routes: AppRoutes.getRoutes,
        //definimos una ruta inicial
        initialRoute: AppRoutes.initialRoute,
      )
    );
  }
}