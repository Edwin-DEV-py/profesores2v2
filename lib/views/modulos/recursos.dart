// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:profesores2v2/components/items.dart';
import 'package:profesores2v2/components/titulos.dart';

class RecursosView extends StatefulWidget {
  const RecursosView({super.key});

  @override
  State<RecursosView> createState() => _RecursosViewState();
}

class _RecursosViewState extends State<RecursosView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('RECURSOS'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: ListView(
                  children: [
                    itemWithDocument1(context, 'assets/pdf.png', 'Actividad Sesión #1', '8 Jun 2024','assets/SESION#1.pdf'),
                    SizedBox(height: 20,),
                    itemWithDocument1(context, 'assets/pdf.png', 'Actividad Sesión #2', '8 Jun 2024','assets/SESION#2.pdf'),
                    SizedBox(height: 20,),
                    itemWithDocument1(context, 'assets/pdf.png', 'Actividad Sesión #3', '8 Jun 2024','assets/SESION#3.pdf'),
                    SizedBox(height: 20,),
                    itemWithDocument1(context, 'assets/pdf.png', 'Actividad Sesión #4', '8 Jun 2024','assets/SESION#4.pdf'),
                    SizedBox(height: 20,),
                    itemWithDocument1(context, 'assets/pdf.png', 'Actividad Sesión #5', '8 Jun 2024','assets/SESION5.pdf'),
                    SizedBox(height: 20,),
                  ],
                )
              )
            )
          ],
        ),
      )
    );
  }
}