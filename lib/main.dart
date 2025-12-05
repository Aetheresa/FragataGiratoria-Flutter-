import 'package:flutter/material.dart';
import 'package:flutter_application_1/contactanos_page.dart';
import 'package:flutter_application_1/dashboard_page.dart';
import 'package:flutter_application_1/inicio_page.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/menu_page.dart';
import 'package:flutter_application_1/registro_page.dart';

void main() {
  runApp(LaFragataGiratoriaApp());
}

// ignore: use_key_in_widget_constructors
class LaFragataGiratoriaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'La Fragata Giratoria',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 2,
          iconTheme: IconThemeData(color: Colors.blue[900]),
          titleTextStyle: TextStyle(
            color: Colors.blue[900],
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InicioPage(),
        '/login': (context) => LoginPage(),
        '/menu': (context) => MenuPage(),
        '/dashboard': (context) => DashboardPage(),
        '/contactanos': (context) => ContactanosPage(),
        '/registro': (context) => RegistroPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}