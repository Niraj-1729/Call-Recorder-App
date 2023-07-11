import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color.fromRGBO(196, 254, 118, 1),
      padding: EdgeInsets.only(top: 50, bottom: 70, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Artificial Human',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text('Active Status',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold))
                ],
              )
            ],
          ),
          // Column(
          //   children: drawerItems.map((element) => Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Row(
          //               children: [
          //                 Icon(
          //                   element['icon'],
          //                   color: Colors.white,
          //                   size: 30,
          //                 ),
          //                 SizedBox(
          //                   width: 10,
          //                 ),
          //                 Text(element['title'],
          //                     style: TextStyle(
          //                         color: Colors.white,
          //                         fontWeight: FontWeight.bold,
          //                         fontSize: 20))
          //               ],
          //             ),
          //           ))
          //       .toList(),
          // ),
          Row(
            children: [
              const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Settings',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 2,
                height: 20,
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Log out',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
