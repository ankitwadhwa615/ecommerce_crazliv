// @dart=2.9

import 'package:flutter/material.dart';
import 'package:ecommerce_crazliv/Screens/LoginScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          brightness: Brightness.dark,
        ),
      ),

      home:LoginScreen(),
    );
  }
}

