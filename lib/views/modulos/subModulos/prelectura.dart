// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/items.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/components/urls.dart';
import 'package:profesores2v2/views/modulos/subModulos/sesionesPrelectura/sesion1.dart';
import 'package:profesores2v2/views/modulos/subModulos/sesionesPrelectura/sesion2.dart';
import 'package:profesores2v2/views/modulos/subModulos/sesionesPrelectura/sesion3.dart';
import 'package:profesores2v2/views/modulos/subModulos/sesionesPrelectura/sesion4.dart';
import 'package:profesores2v2/views/modulos/subModulos/sesionesPrelectura/sesion5.dart';
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
                    SizedBox(height: 20.0),
                    titulos2('TIPOS DE TEXTOS'),
                    SizedBox(height: 10.0),
                    textodobleconNegrilla(
                      '1.Texto Narrativo:',
                      'Consiste en relatar hechos, reales o ficticios, en un espacio y tiempo determinados. Su propósito principal es contar una historia, permitiendo al lector sumergirse en una secuencia de eventos y personajes que pueden generar emociones y reflexiones. Ejemplos comunes de textos narrativos son las novelas, los cuentos, las fábulas, los mitos y las leyendas.'
                    ),
                    textodobleconNegrilla(
                      '2.Texto Descriptivo:',
                      'Se centra en detallar las características de personas, lugares, objetos o situaciones, creando una imagen mental vívida para el lector. Este tipo de texto es crucial para pintar con palabras y permitir que el lector imagine con precisión lo que se está describiendo. Se encuentra frecuentemente en guías turísticas, retratos literarios y descripciones en informes científicos'
                    ),
                    textodobleconNegrilla(
                      '3.Texto Expositivo:',
                      'Su objetivo es presentar información de manera clara y ordenada para explicar un tema o concepto sin intentar influir en la opinión del lector. Los textos expositivos son esenciales para la divulgación de conocimientos y suelen ser objetivos y directos. Ejemplos típicos incluyen artículos enciclopédicos, manuales de instrucción y textos escolares.'
                    ),
                    textodobleconNegrilla(
                      '4.Texto Argumentativo:',
                      'Se caracteriza por presentar una idea o tesis y apoyarla con argumentos con el fin de persuadir al lector sobre una determinada postura. Este tipo de texto incluye tanto la exposición del propio punto de vista como la refutación de los puntos de vista contrarios, siendo común en ensayos, editoriales y artículos de opinión.'
                    ),
                    textodobleconNegrilla(
                      '5.Texto Instructivo:',
                      'Proporciona instrucciones claras y precisas sobre cómo realizar una tarea o proceso, organizando la información en pasos secuenciales para facilitar la comprensión. Estos textos son fundamentales en contextos donde es necesario guiar al lector en la ejecución de acciones específicas, como en recetas de cocina, manuales de usuario y guías de montaje.'
                    ),
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
                    titulos2('LECTURAS DE LAS SESIONES'),
                    SizedBox(height: 20,),
                    itemWithDocument2(
                      context,
                      'assets/libro2.png',
                      'SESIÓN #1',
                      '',
                      'assets/SESION#1.pdf'
                    ),
                    SizedBox(height: 10,),
                    itemWithDocument2(
                      context,
                      'assets/libro2.png',
                      'SESIÓN #2',
                      '',
                      'assets/SESION#2.pdf'
                    ),
                    SizedBox(height: 10,),
                    itemWithDocument2(
                      context,
                      'assets/libro2.png',
                      'SESIÓN #3',
                      '',
                      'assets/SESION#3.pdf'
                    ),
                    SizedBox(height: 10,),
                    itemWithDocument2(
                      context,
                      'assets/libro2.png',
                      'SESIÓN #4',
                      '',
                      'assets/SESION#4.pdf'
                    ),
                    SizedBox(height: 10,),
                    itemWithDocument2(
                      context,
                      'assets/libro2.png',
                      'SESIÓN #5',
                      '',
                      'assets/SESION5.pdf'
                    ),
                    SizedBox(height: 20,),
                    titulos2('PREGUNTAS PARA LAS SESIONES'),
                    SizedBox(height: 10,),
                    itemWithImage2(context, 30,'SESIÓN #1', 'assets/bombilla.png', 0.2, () => Get.to(() => Sesion1(),transition: Transition.downToUp, duration: Duration(milliseconds: 300))),
                    SizedBox(height: 10,),
                    itemWithImage2(context, 30,'SESIÓN #2', 'assets/bombilla.png', 0.2, () => Get.to(() => Sesion2(),transition: Transition.downToUp, duration: Duration(milliseconds: 300))),
                    SizedBox(height: 10,),
                    itemWithImage2(context, 30,'SESIÓN #3', 'assets/bombilla.png', 0.2, () => Get.to(() => Sesion3(),transition: Transition.downToUp, duration: Duration(milliseconds: 300))),
                    SizedBox(height: 10,),
                    itemWithImage2(context, 30,'SESIÓN #4', 'assets/bombilla.png', 0.2, () => Get.to(() => Sesion4(),transition: Transition.downToUp, duration: Duration(milliseconds: 300))),
                    SizedBox(height: 10,),
                    itemWithImage2(context, 30,'SESIÓN #5', 'assets/bombilla.png', 0.2, () => Get.to(() => Sesion5(),transition: Transition.downToUp, duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btnAzul1('FINALIZAR',
                    () async{
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('modulo_estrategias_activo', true);
                      Get.back(result: true);
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