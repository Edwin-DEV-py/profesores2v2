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
            titulos2Modulos('PREGUNTAS DURANTE LA LECTURA SESIÓN #2'),
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
                    titulos2('PRIMER PÁRRAFO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Que se imagina con la siguiente frase” La primavera tradicionalmente” representada por la diosa flora”?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Quién puede leer el primer párrafo en voz alta?'
                    ),
                    textoParrafosJustificado(
                      '3.¿Que está describiendo la obra?'
                    ),
                    textoParrafosJustificado(
                      '4.¿Quién es Goya?'
                    ),
                    textoParrafosJustificado(
                      '5.¿A qué se refiere con “las sierras” y por qué son tan importantes para el artista'
                    ),
                    textoParrafosJustificado(
                      '6.¿Cuál es la idea principal del anterior párrafo?'
                    ),
                    SizedBox(height: 10.0),
                    titulos2('SEGUNDO PÁRRAFO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿A qué se refiere con la frase “floreras o la primavera”?'
                    ),
                    textoParrafosJustificado(
                      '2.¿En qué consiste la técnica los cartones de tapiz?'
                    ),
                    textoParrafosJustificado(
                      '3.¿Por cuál palabra reemplazaría la palabra “pinturas”?'
                    ),
                    textoParrafosJustificado(
                      '4.¿A qué clase de pinturas se refiere el texto en el segundo párrafo?'
                    ),
                    textoParrafosJustificado(
                      '5.¿A qué se refiere con estancias reales?'
                    ),
                    textoParrafosJustificado(
                      '6.¿A qué se refiere a expresión pequeño boceto?'
                    ),
                    textoParrafosJustificado(
                      '7.Nuevamente ¿a qué se refiere la expresión cartones para tapiz?'
                    ),
                    textoParrafosJustificado(
                      '8.¿Puede explicar la técnica que utilizaba Goya?'
                    ),
                    textoParrafosJustificado(
                      '9.¿Tiene alguna pregunta hasta el momento que no le permita comprender la lectura?'
                    ),
                    SizedBox(height: 10.0),
                    titulos2('TERCER PÁRRAFO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿A qué se refiere la expresión “príncipes de Asturias”?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Qué relación tiene los príncipes de Asturias con el palacio el prado?'
                    ),
                    textoParrafosJustificado(
                      '3.¿Por qué no llegaron a colgarse los tapices?'
                    ),
                    textoParrafosJustificado(
                      '4.¿Cuál es la idea principal del tercer párrafo?'
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