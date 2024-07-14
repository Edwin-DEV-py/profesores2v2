// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:profesores2v2/components/items.dart';
import 'package:profesores2v2/components/titulos.dart';

class ContactoView extends StatelessWidget {
  const ContactoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('CONTACTO'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: ListView(
                  children: [
                    ItemCountColumnaVertical(
                      context,
                      'assets/maestro.png', 
                      'IVAN DARIO ROJAS MARTINEZ', 
                      '321546879789', 
                      'ivanr784@hotmail.com'
                    ),
                    SizedBox(height: 20,),
                    ItemCountColumnaVertical(
                      context,
                      'assets/mujer.png', 
                      'PAMELA PATRICIA GARCIA PALACIOS', 
                      '321546879789', 
                      'pamepatricia789&@gmail.com'
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}