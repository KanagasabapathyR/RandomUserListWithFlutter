import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Users List',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        textTheme: GoogleFonts.fredokaOneTextTheme(),
      ),
      home: HomePage(),
    );
  }
}
