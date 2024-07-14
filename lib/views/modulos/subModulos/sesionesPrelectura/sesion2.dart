// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';

class Sesion2 extends StatelessWidget {
  const Sesion2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('PREGUNTAS PRELECTURA SESIÓN #2'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset('assets/cuadro.png'),
                    ),
                    SizedBox(height: 10.0),
                    titulos2('ACTIVACIÓN DE CONOCIMIENTOS PREVIOS'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Tiene idea de lo que es una ficha técnica de un museo?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Cuál es el autor de la obra?'
                    ),
                    textoParrafosJustificado(
                      '3.¿Cuál es la fecha de publicación de la obra?'
                    ),
                    textoParrafosJustificado(
                      '4.¿En dónde está ubicada la obra?'
                    ),
                    textoParrafosJustificado(
                      '5.¿Cuál es el nombre del museo y porque aparece dos veces en el encabezado?'
                    ),
                    SizedBox(height: 10.0),
                    titulos2('ESTABLECER PREDICCIONES SOBRE EL TEXTO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Qué te imaginas que tratara en la lectura?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Qué te imaginas que tratara en la lectura?'
                    ),
                    textoParrafosJustificado(
                      '3.Conoce pintores o pinturas famosas?'
                    ),
                    textoParrafosJustificado(
                      '4.¿Qué es un museo?'
                    ),
                    textoParrafosJustificado(
                      '5.¿Cuál es la función de un museo?'
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