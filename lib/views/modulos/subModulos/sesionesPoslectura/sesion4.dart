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
            titulos2Modulos('PREGUNTAS DURANTE LA LECTURA SESIÓN #4'),
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
                    titulos2('PRIMER PÁRRAFO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Como es el acrónimo de asociación nacional de instituciones financieras?'
                    ),
                    textoParrafosJustificado(
                      '2.¿A qué se refiere con el término “su revista”?'
                    ),
                    textoParrafosJustificado(
                      '3.¿En qué año se plantea la tesis?'
                    ),
                    textoParrafosJustificado(
                      '4.¿Cuál es el acrónimo de tasa de encarcelamiento?'
                    ),
                    textoParrafosJustificado(
                      '5.¿Cuál es la tesis que propone el artículo en el primer párrafo'
                    ),
                    textoParrafosJustificado(
                      '6.¿Después del punto seguido del primer párrafo?'
                    ),
                    textoParrafosJustificado(
                      '7.¿Según la lectura “el editorial” y” la revista” son lo mismo?'
                    ),
                    textoParrafosJustificado(
                      '8.¿Como se llama la revista?'
                    ),
                    textoParrafosJustificado(
                      '9.¿Cuál es la idea principal en el primer párrafo?'
                    ),
                    textoParrafosJustificado(
                      '10.¿De qué se trata la lectura en lo queda del texto leído?'
                    ),
                    textoParrafosJustificado(
                      '11.¿Según la lectura cuales son los tres países comparados?'
                    ),
                    textoParrafosJustificado(
                      '12.¿Como califica la TE de Estados unidos y por qué?'
                    ),
                    textoParrafosJustificado(
                      '13.¿Según la lectura Para Colombia en comparación con estados unidos cómo califica?'
                    ),
                    SizedBox(height: 10.0),
                    titulos2('SEGUNDO PÁRRAFO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Qué puede deducir de la frase “estas cifras son discutibles”?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Después de leer la oración Puede contestar nuevamente por que “estas cifras son discutibles”?'
                    ),
                    textoParrafosJustificado(
                      '3.¿Qué puede deducir de la frase “pero la tendencia presentada por la ANIF es correcta:”?'
                    ),
                    textoParrafosJustificado(
                      '4.¿Por cuál reemplazaría la palabra “tendencia”?'
                    ),
                    textoParrafosJustificado(
                      '5.Conteste la pregunta expresada en el texto ¿significa por ello que estados unidos tiene un sistema penal más eficiente?'
                    ),
                    SizedBox(height: 10.0),
                    titulos2('TERCER PÁRRAFO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Según el texto que es lo que aceptan todos los analistas'
                    ),
                    SizedBox(height: 10.0),
                    titulos2('CUARTO PÁRRAFO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Cuáles son los efectos de una TE excesiva y además discriminatoria?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Qué puede resumir de la tercera idea del cuarto párrafo?'
                    ),
                    SizedBox(height: 10.0),
                    titulos2('QUINTO PÁRRAFO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Cuál es la primera conclusión y qué relación tiene con el primer párrafo?'
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