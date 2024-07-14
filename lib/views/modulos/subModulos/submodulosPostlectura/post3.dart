// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/items.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/views/modulos/recursos.dart';

class Post3 extends StatelessWidget {
  const Post3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('POSTLECTURA 3'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    textoParrafosJustificado(
                      'En este módulo, los estudiantes serán evaluados para identificar si sus habilidades de comprensión lectora han mejorado, mediante diversas actividades y un pos-test.'
                    ),
                    textoParrafosJustificado(
                      'Nos basamos en las estrategias de evaluación y consolidación de la comprensión lectora descritas por Isabel Solé (1998) para desarrollar este módulo. '
                    ),
                    textoParrafosJustificado(
                      'Evaluar la comprensión después de la lectura es fundamental para medir el progreso y ajustar las estrategias pedagógicas según sea necesario.'
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.0),
                          textodobleconNegrilla(
                            'Buscar e Identificar la Idea Principal: ',
                            'Solé sugiere enseñar a los estudiantes a buscar e identificar la idea principal del texto. Esta habilidad es crucial para la comprensión global y permite a los estudiantes centrarse en la información más relevante.'
                          ),
                          SizedBox(height: 5.0),
                          textodobleconNegrilla(
                            'Enseñar sobre el Resumen: ',
                            'Solé también enfatiza la importancia de enseñar a los estudiantes cómo resumir un texto. El resumen ayuda a consolidar la comprensión, permitiendo a los estudiantes expresar la información esencial del texto en sus propias palabras.'
                          ),
                          SizedBox(height: 5.0),
                          textodobleconNegrilla(
                            'Formular y Responder Preguntas: ',
                            'Formular y responder preguntas es una estrategia clave para evaluar y aprender. Solé recomienda que los estudiantes practiquen tanto la formulación de preguntas sobre el texto como la respuesta a estas. Esta técnica no solo evalúa la comprensión, sino que también promueve una reflexión más profunda y un análisis crítico del texto.'
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    itemLectura(context, () => Get.to(RecursosView())),
                    SizedBox(height: 20,),
                    btnAzul1('FINALIZAR',
                    (){Get.back();}
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}