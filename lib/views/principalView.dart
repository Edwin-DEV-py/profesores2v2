// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, unnecessary_this

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/services.dart';
import 'package:profesores2v2/views/disclaimer.dart';
import 'package:profesores2v2/views/modulos/contacto.dart';
import 'package:profesores2v2/views/modulos/modulos.dart';
import 'package:profesores2v2/views/modulos/recursos.dart';

class PrincipalView extends StatefulWidget {
  const PrincipalView({super.key});

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {

  int index = 0;

  final pageIndex = [
    ModulosView(),
    RecursosView(),
    ContactoView(),
    Disclaimer()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pageIndex[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 245, 242, 242),
        color: Color.fromARGB(255, 255, 255, 255),
        animationDuration: Duration(milliseconds: 300),
        buttonBackgroundColor: const Color.fromARGB(255, 24, 63, 139),
        animationCurve: Curves.ease,
        onTap: (i){
          setState(() {
            if (i == pageIndex.length -1){
              if (Platform.isAndroid){
                SystemNavigator.pop();
              }else if (Platform.isIOS) {
                exit(0);
              }
            }else{
              this.index = i;
            }
          });
        },
        items: [
          buildNavItem(Icons.book_outlined, 0),
          buildNavItem(Icons.document_scanner_outlined, 1),
          buildNavItem(Icons.person_outlined, 2),
          buildNavItem(Icons.logout_outlined, 3),
        ],
      ),
    );
  }

  Widget buildNavItem(IconData icon, int itemIndex) {
    bool isSelected = index == itemIndex;

    return Container(
      padding: isSelected ? EdgeInsets.all(2.0) : EdgeInsets.all(1.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? const Color.fromARGB(255, 24, 63, 139) : null,
      ),
      child: Icon(
        icon,
        size: isSelected ? 28 : 25,
        color: isSelected ? Colors.white : Colors.black,
      ),
    );
  }
}