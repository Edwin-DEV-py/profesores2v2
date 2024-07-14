// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/items.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/components/urls.dart';
import 'package:profesores2v2/views/modulos/subModulos/sesionesPoslectura/sesion1.dart';
import 'package:profesores2v2/views/modulos/subModulos/sesionesPoslectura/sesion2.dart';
import 'package:profesores2v2/views/modulos/subModulos/sesionesPoslectura/sesion3.dart';
import 'package:profesores2v2/views/modulos/subModulos/sesionesPoslectura/sesion4.dart';
import 'package:profesores2v2/views/modulos/subModulos/sesionesPoslectura/sesion5.dart';

class SubModuloLiteral extends StatefulWidget {
  const SubModuloLiteral({super.key});

  @override
  State<SubModuloLiteral> createState() => _SubModuloLiteralState();
}

class _SubModuloLiteralState extends State<SubModuloLiteral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    titulos1('DURANTE LA LECTURA'),
                    SizedBox(height: 10,),
                    textoParrafosJustificado(
                      'Este módulo presenta actividades en grupo y actividades individuales para que los estudiantes practiquen la lectura y apliquen las estrategias aprendidas.'
                    ),
                    textoParrafosJustificado(
                      'Nos basamos en las estrategias propuestas por Isabel Solé (1998) para desarrollar habilidades de comprensión lectora durante la lectura.'
                    ),
                    textoParrafosJustificado(
                      'La práctica con textos de diferentes niveles de dificultad permite a los estudiantes desarrollar gradualmente sus habilidades de comprensión lectora.'
                    ),
                    SizedBox(height: 10,),
                    textodobleconNegrillaSinPunto(
                      '1.Lectura Compartida:',
                      'Solé enfatiza la importancia de la lectura compartida, que puede incluir leer en grupo de estudiantes, leer con el profesor, lectura silenciosa o en voz alta, y lectura fraccionada o por partes. Estas modalidades de lectura fomentan la colaboración y el apoyo mutuo, ayudando a los estudiantes a abordar textos complejos con mayor confianza. Además, siguiendo las tareas de lectura compartida en el aula, el docente debe hacer un resumen de lo leído en el tablero, pedir aclaraciones o explicaciones sobre dudas que plantea el texto, y hacer preguntas explícitas sobre la lectura (nivel literal). Después de estos pasos, el docente debe establecer predicciones sobre lo que queda por leer, repitiendo el ciclo de lectura, resumen, aclaraciones y predicciones.'
                    ),
                    SizedBox(height: 10,),
                    textodobleconNegrillaSinPunto(
                      '2.Lectura Independiente:',
                      'La lectura independiente es esencial para que los estudiantes desarrollen su autonomía y confianza en sus habilidades de comprensión. Solé sugiere que los estudiantes practiquen la lectura por su cuenta, aplicando las estrategias aprendidas para mejorar su comprensión de manera continua. Para complementar esta práctica, las reglas de lectura independiente incluyen predecir (el docente formula predicciones), clarificar dudas sobre lo que se ha comprendido (control de la comprensión, metacognición), preguntar sobre lo que se ha leído, y recapitular (verificación de hipótesis y hacer predicciones nuevamente).'
                    ),
                    SizedBox(height: 10,),
                    textodobleconNegrillaSinPunto(
                      '3.Lectura Guiada por el Docente:',
                      'La lectura guiada es una estrategia donde el docente facilita la comprensión del texto, proporcionando apoyo y orientación mientras los estudiantes leen. Esto puede incluir explicar vocabulario, aclarar conceptos difíciles y hacer preguntas que promuevan la reflexión y el análisis. Este enfoque incluye formular predicciones sobre el texto, plantearse preguntas sobre lo que se ha leído, aclarar dudas acerca del texto y resumir las ideas del texto.'
                    ),
                    SizedBox(height: 10,),
                    textodobleconNegrillaSinPunto(
                      '4.Normalizar la Dificultad y Desglosar el Texto:',
                      'Solé también destaca que es normal no entender algo a la primera lectura. En tales casos, se recomienda desglosar el texto mediante preguntas y esperar respuestas para una mejor comprensión. Esta técnica ayuda a los estudiantes a enfrentar desafíos de lectura sin frustración y a desarrollar habilidades críticas para analizar y entender textos complejos.'
                    ),
                    SizedBox(height: 20,),
                    video_show('JkfW0g6AJWw'),
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
                    btnAzul1('FINALIZAR', () => Get.back()),
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