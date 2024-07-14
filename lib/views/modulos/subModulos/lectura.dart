// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/items.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/components/urls.dart';
import 'package:profesores2v2/views/modulos/subModulos/submodulosPostlectura/post1.dart';
import 'package:profesores2v2/views/modulos/subModulos/submodulosPostlectura/post2.dart';
import 'package:profesores2v2/views/modulos/subModulos/submodulosPostlectura/post3.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ModuloLectura extends StatefulWidget {
  const ModuloLectura({super.key});

  @override
  State<ModuloLectura> createState() => _ModuloLecturaState();
}

class _ModuloLecturaState extends State<ModuloLectura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('LECTURA'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    textoParrafosJustificado(
                      'Este módulo presenta textos de tres niveles de dificultad (fácil, medio y difícil) para que los estudiantes practiquen la lectura y apliquen las estrategias aprendidas.'
                    ),
                    textoParrafosJustificado(
                      'Nos basamos en las estrategias propuestas por Isabel Solé (1998) para desarrollar habilidades de comprensión lectora durante la lectura. '
                    ),
                    textoParrafosJustificado(
                      'La práctica con textos de diferentes niveles de dificultad permite a los estudiantes desarrollar gradualmente sus habilidades de comprensión lectora.'
                    ),
                    SizedBox(height: 10,),
                    Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5.0),
                            textodobleconNegrillaSinPunto(
                              '1.Lectura Compartida:',
                              'Solé enfatiza la importancia de la lectura compartida, que puede incluir leer en grupo de estudiantes, leer con el profesor, lectura silenciosa o en voz alta, y lectura fraccionada o por partes. Estas modalidades de lectura fomentan la colaboración y el apoyo mutuo, ayudando a los estudiantes a abordar textos complejos con mayor confianza.'
                            ),
                            SizedBox(height: 5.0),
                            textodobleconNegrillaSinPunto(
                              '2.Lectura Independiente:',
                              'La lectura independiente es esencial para que los estudiantes desarrollen su autonomía y confianza en sus habilidades de comprensión. Solé sugiere que los estudiantes practiquen la lectura por su cuenta, aplicando las estrategias aprendidas para mejorar su comprensión de manera continua.'
                            ),
                            SizedBox(height: 5.0),
                            textodobleconNegrillaSinPunto(
                              '3.Lectura Guiada por el Docente:',
                              'La lectura guiada es una estrategia donde el docente facilita la comprensión del texto, proporcionando apoyo y orientación mientras los estudiantes leen. Esto puede incluir explicar vocabulario, aclarar conceptos difíciles y hacer preguntas que promuevan la reflexión y el análisis.'
                            ),
                            SizedBox(height: 5.0),
                            textodobleconNegrillaSinPunto(
                              '4.Normalizar la Dificultad y Desglosar el Texto:',
                              'Solé también destaca que es normal no entender algo a la primera lectura. En tales casos, se recomienda desglosar el texto mediante preguntas y esperar respuestas para una mejor comprensión. Esta técnica ayuda a los estudiantes a enfrentar desafíos de lectura sin frustración y a desarrollar habilidades críticas para analizar y entender textos complejos.'
                            ),
                          ],
                        ),
                      ),
                    SizedBox(height: 10.0),
                    video_show('JkfW0g6AJWw'),
                    SizedBox(height: 20,),
                    titulos2('HERRAMIENTAS'),
                    SizedBox(height: 10.0),
                    itemsReferencia(context),
                    SizedBox(height: 20.0),
                    titulos2('TEXTOS'),
                    SizedBox(height: 10.0),
                    itemLectura(context, () => Get.to(Post1())),
                    SizedBox(height: 10.0),
                    itemLectura(context, ()=> Get.to(Post2())),
                    SizedBox(height: 10.0),
                    itemLectura(context, ()=> Get.to(Post3())),
                    SizedBox(height: 20,),
                    btnAzul1('FINALIZAR',
                    () async{
                      Get.back();
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('modulo_postlectura_activo', true);
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