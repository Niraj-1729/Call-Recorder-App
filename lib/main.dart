import 'package:call_recorder/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Mindful AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
          appBarTheme: const AppBarTheme(
            color: Color.fromRGBO(0, 0, 0, 1),
          )),
      home: const HomeScreen(),
    );
  }
}
