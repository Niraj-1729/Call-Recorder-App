import 'package:call_recorder/screens/drawer_screen.dart';
import 'package:call_recorder/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: const [
            // DrawerScreen(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
