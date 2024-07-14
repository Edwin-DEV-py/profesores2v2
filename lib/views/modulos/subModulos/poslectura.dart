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
import 'package:shared_preferences/shared_preferences.dart';


class ModuloPostlectura extends StatefulWidget {
  const ModuloPostlectura({super.key});

  @override
  State<ModuloPostlectura> createState() => _ModuloPostlecturaState();
}

class _ModuloPostlecturaState extends State<ModuloPostlectura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('POSTLECTURA'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    textoParrafosJustificado(
                      'En este módulo, el estudiante será evaluado al final para identificar si sus habilidades de comprensión lectora han mejorado. Además, se le enseñarán diversos contenidos de suma importancia para mejorar la comprensión de un texto, como el análisis de la idea principal y la elaboración de resúmenes.'
                    ),
                    textoParrafosJustificado(
                      'Nos basamos en las estrategias de evaluación y consolidación de la comprensión lectora descritas por Isabel Solé (1998) para desarrollar este módulo. '
                    ),
                    textoParrafosJustificado(
                      'Evaluar la comprensión después de la lectura es fundamental para medir el progreso y ajustar las estrategias pedagógicas según sea necesario.'
                    ),
                    textodobleconNegrilla(
                      'Buscar e Identificar la Idea Principal',
                      'Solé sugiere enseñar a los estudiantes a buscar e identificar la idea principal del texto. Esta habilidad es crucial para la comprensión global y permite a los estudiantes centrarse en la información más relevante.'
                    ),
                    SizedBox(height: 10,),
                    textodobleconNegrilla(
                      'Enseñar sobre el Resumen:',
                      'Solé también enfatiza la importancia de enseñar a los estudiantes cómo resumir un texto. El resumen ayuda a consolidar la comprensión, permitiendo a los estudiantes expresar la información esencial del texto en sus propias palabras.'
                    ),
                    SizedBox(height: 10,),
                    textodobleconNegrilla(
                      'Formular y Responder Preguntas:',
                      'Formular y responder preguntas es una estrategia clave para evaluar y aprender. Solé recomienda que los estudiantes practiquen tanto la formulación de preguntas sobre el texto como la respuesta a estas. Esta técnica no solo evalúa la comprensión, sino que también promueve una reflexión más profunda y un análisis crítico del texto.'
                    ),
                    video_show('zI_KFPWJzhI'),
                    SizedBox(height: 20,),
                    itemWithImage2(context, 22,'IDEA PRINCIPAL', 'assets/bombilla.png', 0.2, () => Get.to(() => Post1(),transition: Transition.downToUp, duration: Duration(milliseconds: 300))),
                    SizedBox(height: 10,),
                    itemWithImage2(context, 50,'RESUMEN', 'assets/libro2.png', 0.2, () => Get.to(() => Post2(),transition: Transition.downToUp, duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btnAzul1('FINALIZAR',
                    () async{
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('modulo_conclusiones_activo', true);
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