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
            titulos2Modulos('PREGUNTAS DURANTE LA LECTURA SESIÓN #3'),
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
                    textoParrafosJustificado(
                      '1.¿Cuál es la condición que se establece en la primera oración del párrafo, si te casas sin amar'
                    ),
                    textoParrafosJustificado(
                      '2.¿Cuál es la condición que se establece en la segunda oración del párrafo, si te casas con la persona que amas?'
                    ),
                    textoParrafosJustificado(
                      '3.¿Después del segundo punto seguido, que relación se establece sobre las dos condiciones anteriores?'
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