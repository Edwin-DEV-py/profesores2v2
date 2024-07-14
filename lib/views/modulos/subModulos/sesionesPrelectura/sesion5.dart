// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';

class Sesion5 extends StatelessWidget {
  const Sesion5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('PREGUNTAS PRELECTURA SESIÓN #5'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset('assets/escritor.png'),
                    ),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      'René Descartes fue un filósofo, matemático y científico francés del siglo XVII, conocido como el padre de la filosofía moderna por su famosa frase "Cogito, ergo sum" ("Pienso, luego existo").'
                    ),
                    SizedBox(height: 10.0),
                    titulos2('ACTIVACIÓN DE CONOCIMIENTOS PREVIOS'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Cuál es el autor del texto?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Cuál es la fecha de publicación del texto?'
                    ),
                    textoParrafosJustificado(
                      '3.¿Cuándo y en donde se publicó el articulo?'
                    ),
                    SizedBox(height: 10.0),
                    titulos2('ESTABLECER PREDICCIONES SOBRE EL TEXTO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Qué te imaginas que tratara en la lectura?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Sabes algo de la obra de Rene Descartes?'
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