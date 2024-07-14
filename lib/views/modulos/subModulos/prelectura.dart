// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/components/urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ModuloPrelectura extends StatefulWidget {
  const ModuloPrelectura({super.key});

  @override
  State<ModuloPrelectura> createState() => _ModuloPrelecturaState();
}

class _ModuloPrelecturaState extends State<ModuloPrelectura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('PRELECTURA'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    textoParrafosJustificado(
                      'El módulo de Prelectura está diseñado para preparar al lector antes de abordar un texto mediante la activación de sus conocimientos previos y el establecimiento de expectativas sobre el contenido. Nos basamos en las estrategias propuestas por Isabel Solé (1998), quien destaca varios elementos clave en esta etapa:'
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5.0),
                            textodobleconNegrilla('Motivación al Estudiante y Objetivo Específico de la Lectura:','Solé subraya la importancia de motivar al estudiante antes de comenzar la lectura. Esto incluye establecer claramente el objetivo específico de la lectura y explicar por qué es relevante, lo que ayuda a los estudiantes a comprometerse con el proceso de manera más efectiva.'),
                            SizedBox(height: 5.0),
                            textodobleconNegrilla('Explicación Previa:', 'Proporcionar una explicación previa sobre el contenido del texto es fundamental. Esta introducción ayuda a los estudiantes a tener una visión general del tema y a estar mejor preparados para el material que van a leer'),
                            SizedBox(height: 5.0),
                            textodobleconNegrilla('Activación de Conocimientos Previos:', 'Es crucial activar los conocimientos previos de los estudiantes sobre el tema del texto. Solé sugiere utilizar actividades que permitan a los estudiantes recordar y compartir lo que ya saben, lo que facilita la comprensión al conectar la nueva información con la ya existente.'),
                            SizedBox(height: 5.0),
                            textodobleconNegrilla('Realización de Predicciones y Preguntas:', 'Solé recomienda que los estudiantes hagan predicciones sobre el contenido del texto y formulen preguntas acerca de lo que esperan aprender. Estas predicciones y preguntas ayudan a orientar la atención del lector y a crear expectativas que guiarán la lectura.')
                          ],
                        ),
                      ),
                    SizedBox(height: 10.0),
                    video_show('iDc_K8xWBjA'),
                    SizedBox(height: 10,),
                    titulos2('PARTES DE UN TEXTO'),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/partes.png'),
                          width: MediaQuery.of(context).size.width*0.9
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    btnAzul1('FINALIZAR',
                    () async{
                      Get.back();
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('modulo_estrategias_activo', true);
                    }
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}