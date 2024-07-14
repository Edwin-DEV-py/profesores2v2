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
            titulos2Modulos('PREGUNTAS DURANTE LA LECTURA SESIÓN #1'),
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
                    textoParrafosJustificado(
                      '1.En la primera frase del primer párrafo ¿Qué significa la expresión “todos reclamaron”?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Quiénes son todos?'
                    ),
                    textoParrafosJustificado(
                      '3.¿Cuál es el segundo personaje de la historia?'
                    ),
                    textoParrafosJustificado(
                      '4.¿Que interpreta del primer párrafo?'
                    ),
                    textoParrafosJustificado(
                      '5.¿Tiene dudas? ¿Cuales?'
                    ),
                    textoParrafosJustificado(
                      '6.¿Quién es el personaje principal?'
                    ),
                    textoParrafosJustificado(
                      '7.¿Quién es el personaje secundario?'
                    ),
                    textoParrafosJustificado(
                      '8.¿Cuál es la intención del autor en el primer párrafo?'
                    ),
                    textoParrafosJustificado(
                      '9.En la primera frase del segundo párrafo ¿Qué significa la expresión “también celebraron”?'
                    ),
                    textoParrafosJustificado(
                      '10.En el segundo párrafo ¿que podría significar la expresión “frustró el tongo”?'
                    ),
                    textoParrafosJustificado(
                      '11.Nuevamente, en el segundo párrafo ¿qué significa la expresión “frustró el tongo”?'
                    ),
                    textoParrafosJustificado(
                      '12.¿Qué acciones se describen respecto a Antonio Cervantes Kid Pambelé?'
                    ),
                    textoParrafosJustificado(
                      '13.¿Qué otros personajes se describe el texto?'
                    ),
                    textoParrafosJustificado(
                      '14.¿Cuál es la idea principal en el segundo párrafo?'
                    ),
                    textoParrafosJustificado(
                      '15.¿De qué trata la lectura en el tercer párrafo?'
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