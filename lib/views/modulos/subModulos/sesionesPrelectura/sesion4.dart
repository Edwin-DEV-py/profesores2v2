// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';

class Sesion4 extends StatelessWidget {
  const Sesion4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('PREGUNTAS PRELECTURA SESIÓN #4'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset('assets/edificio.png'),
                    ),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      'Taza estadística: coeficiente que representa la relación entre una cantidad y frecuencia de un fenómeno'
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
                    textoParrafosJustificado(
                      '4.¿Qué relación tendría el sistema de cárceles colombiano con Estados Unidos?'
                    ),
                    SizedBox(height: 10.0),
                    titulos2('ESTABLECER PREDICCIONES SOBRE EL TEXTO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Qué te imaginas que tratara en la lectura?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Te ha preocupado la situación carcelaria del país?'
                    ),
                    textoParrafosJustificado(
                      '3.¿A dónde van los presos?'
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