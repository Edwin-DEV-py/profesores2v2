// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';

class Sesion1 extends StatelessWidget {
  const Sesion1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('PREGUNTAS PRELECTURA SESIÓN #1'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset('assets/senor.png'),
                    ),
                    SizedBox(height: 10.0),
                    titulos2('ACTIVACIÓN DE CONOCIMIENTOS PREVIOS'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Según la cita del documento, cual es el título de la información presentada?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Quién es el escritor del texto?'
                    ),
                    textoParrafosJustificado(
                      '3.¿En qué año fue publicado?'
                    ),
                    textoParrafosJustificado(
                      '4.¿Qué sabe o conoce algo, acerca de Antonio cervantes Kid Pambelé?'
                    ),
                    SizedBox(height: 20,),
                    btnAzul1('FINALIZAR',
                    (){Get.back();}
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}