// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';

class Sesion3 extends StatelessWidget {
  const Sesion3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('PREGUNTAS PRELECTURA SESIÓN #3'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset('assets/noticia.png'),
                    ),
                    SizedBox(height: 10.0),
                    titulos2('ACTIVACIÓN DE CONOCIMIENTOS PREVIOS'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Conoce sobre el periódico The New York Times?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Qué puede deducir del título del texto?'
                    ),
                    textoParrafosJustificado(
                      '3.¿Cuál es el autor del texto?'
                    ),
                    textoParrafosJustificado(
                      '4.¿Cuál es la fecha de publicación del texto?'
                    ),
                    textoParrafosJustificado(
                      '5.¿De qué lugar proviene el texto?'
                    ),
                    SizedBox(height: 10.0),
                    titulos2('ESTABLECER PREDICCIONES SOBRE EL TEXTO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Qué te imaginas que tratara en la lectura?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Conoce pintores o pinturas famosas?'
                    ),
                    textoParrafosJustificado(
                      '3.¿Qué piensa acerca de matrimoniarse o del matrimonio?'
                    ),
                    textoParrafosJustificado(
                      '4.De acuerdo con el título del texto, ¿Qué relación tendría casarse con la riqueza?'
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