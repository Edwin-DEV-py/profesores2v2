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
            titulos2Modulos('PREGUNTAS DURANTE LA LECTURA SESIÓN #5'),
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
                    titulos2('PRIMER PÁRRAFO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Quién quería asesinar a Descartes?'
                    ),
                    SizedBox(height: 10.0),
                    titulos2('SEGUNDO PÁRRAFO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Quién cuenta la historia?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Qué edad tenía Descartes”?'
                    ),
                    textoParrafosJustificado(
                      '3.¿Por qué hizo ese viaje Descartes?'
                    ),
                    textoParrafosJustificado(
                      '4.¿A dónde se dirige Descartes”?'
                    ),
                    SizedBox(height: 10.0),
                    titulos2('TERCER PÁRRAFO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Qué fue lo que descubrió Descartes?'
                    ),
                    SizedBox(height: 10.0),
                    titulos2('CUARTO PÁRRAFO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Cuál es la idea principal del cuarto párrafo?'
                    ),
                    SizedBox(height: 10.0),
                    titulos2('QUINTO PÁRRAFO'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Cuál es la conclusión más importante en el quinto párrafo?'
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