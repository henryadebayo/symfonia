import 'package:flutter/material.dart';
import 'package:symfonia/UI/bottomNavigation/bottom_naavigation.dart';

import 'UI/history/history_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavigationScreen(),
    );
  }
}