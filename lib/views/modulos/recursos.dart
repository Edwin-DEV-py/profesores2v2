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
                    itemWithDocument1(context, 'assets/pdf.png', 'Actividad #1', '8 Jun 2024','assets/act1.pdf'),
                    SizedBox(height: 20,),
                    itemWithDocument1(context, 'assets/pdf.png', 'Actividad #2', '8 Jun 2024','assets/act2.pdf'),
                    SizedBox(height: 20,),
                    itemWithDocument1(context, 'assets/pdf.png', 'Actividad #3', '8 Jun 2024','assets/act3.pdf'),
                    SizedBox(height: 20,),
                    itemWithDocument1(context, 'assets/pdf.png', 'PostLectura #1', '8 Jun 2024','assets/pos1.pdf'),
                    SizedBox(height: 20,),
                    itemWithDocument1(context, 'assets/pdf.png', 'PostLectura #2', '8 Jun 2024','assets/pos2.pdf'),
                    SizedBox(height: 20,),
                    itemWithDocument1(context, 'assets/pdf.png', 'PostLectura #3', '8 Jun 2024','assets/pos3.pdf'),
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