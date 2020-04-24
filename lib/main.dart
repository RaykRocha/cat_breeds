import 'package:flutter/material.dart';
import 'package:nac_gatos/screens/gatos_detalhes_screen.dart';
import 'package:nac_gatos/screens/gatos_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Raça Gatos App',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xff6173BD),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => GatosScreen(),
        '/gatos_detalhes': (context) => GatosDetalhesScreen(),
      },
    );
  }
}

/*
theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
*/
