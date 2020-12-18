import 'package:flutter/material.dart';
import 'package:practica_1/pages/global_settings_page.dart';
import 'package:practica_1/pages/home_page.dart';
import 'package:practica_1/pages/login_section/login_page.dart';
import 'package:practica_1/pages/login_section/main_login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practices',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.name,
      routes: {
        MainLoginPage.name: (BuildContext context) => MainLoginPage(),
        LoginPage.name: (BuildContext context) => LoginPage(),
        HomePage.name: (BuildContext context) => HomePage(),
        GlobalSettingsPage.name: (BuildContext context) => GlobalSettingsPage(),
      },
    );
  }
}
