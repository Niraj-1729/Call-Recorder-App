import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'drawer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //----------------------------------------------APPBAR-------------------------------------------------------------
        appBar: AppBar(
          toolbarHeight: 60,
          centerTitle: true,
          elevation: 22,
          backgroundColor: Color.fromRGBO(35, 35, 35, 1),
          title: const Text(
            'Directory',
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 2),
              fontFamily: 'Circular',
            ),
          ),
          shadowColor: Color.fromARGB(40, 255, 255, 255),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(200)
                ),
          ),
          bottom: const PreferredSize(preferredSize: Size.fromHeight(10),
           child: SizedBox()),
        ),
        // -----------------------------------------------body--------------------------------------------------------
        body: Container(),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  DrawerScreen(),
                ],
              ),
            ),
          ),
        ),
        // ----------------------------------------------bottomnavigationbar------------------------------------------
        bottomNavigationBar: CurvedNavigationBar(
            height: 60,
            backgroundColor: Color.fromRGBO(0, 0, 0, 1),
            color: Color.fromRGBO(196, 254, 118, 0.9),
            onTap: (index) {
              print(index);
            },
            items: const [
              Icon(Icons.location_history_rounded ),
              Icon(Icons.wifi_calling_sharp),
              Icon(Icons.settings_applications_rounded),
            ]),
      ),
    );
  }
}
