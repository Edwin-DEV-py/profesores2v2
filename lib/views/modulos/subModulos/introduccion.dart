// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/components/urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ModuloIntroduccion extends StatefulWidget {
  const ModuloIntroduccion({super.key});

  @override
  State<ModuloIntroduccion> createState() => _ModuloIntroduccionState();
}

class _ModuloIntroduccionState extends State<ModuloIntroduccion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('INTRODUCCIÓN'),
            Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ListView(
                  shrinkWrap: true,
                  children: [
                    textoParrafosJustificado(
                      'El proyecto Léame tiene como objetivo mejorar los niveles de comprensión lectora de los estudiantes de 10º grado del Colegio I.E.R Tulapita, especialmente aquellos de estratos 1 y 2, quienes presentan dificultades en la comprensión lectora, específicamente en el área de lectura inferencial. Para ello, hemos desarrollado una aplicación móvil dividida en los siguientes módulos:'
                    ),
                    textoParrafosJustificado(
                      '1.Introducción: Proporciona una visión general del proyecto, explicando su propósito y estructura.'
                    ),
                    textoParrafosJustificado(
                      '2.Prelectura: Estrategias para preparar al lector antes de la lectura, como la activación de conocimientos previos.'
                    ),
                    textoParrafosJustificado(
                      '3.Estrategias: Dividido en tres submódulos:'
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5.0),
                            Text('• Estrategias Literales', style: TextStyle(fontSize: 16.0)),
                            SizedBox(height: 5.0),
                            Text('• Estrategias Inferenciales', style: TextStyle(fontSize: 16.0)),
                            SizedBox(height: 5.0),
                            Text('• Estrategias Interpretativas', style: TextStyle(fontSize: 16.0)),
                          ],
                        ),
                      ),
                    textoParrafosJustificado(
                      '4.Lectura: Presenta textos de diferentes niveles de dificultad para ser leídos por los estudiantes.'
                    ),
                    textoParrafosJustificado(
                      '5.Postlectura: Actividades para consolidar y evaluar la comprensión lectora después de la lectura.'
                    ),
                    SizedBox(height: 10,),
                    subTitulos('CONTEXTO Y ALCANCE'),
                    textoParrafosJustificado(
                      'Este proyecto busca implementar la estrategia QEA (Quiero Entender Aprendo) para mejorar la comprensión lectora mediante el uso de la aplicación Léame. La población objetivo son los estudiantes de décimo grado del Colegio I.E.R Tulapita. Se utilizarán diversas estrategias pedagógicas basadas en investigaciones académicas para desarrollar y evaluar la comprensión lectora.'
                    ),
                    SizedBox(height: 10,),
                    subTitulos('ESTRATEGIAS UTILIZADAS BASADAS EN ISABEL SOLE'),
                    SizedBox(height: 5,),
                    subTitulos2('1.Antes de la Lectura:'),
                    Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5.0),
                            textoParrafosJustificado(
                              'a.Motivación al Estudiante y Objetivo para Leer: Isabel Solé destaca la importancia de motivar a los estudiantes antes de comenzar la lectura. Esto se puede lograr estableciendo claramente los objetivos de la lectura y explicando por qué es importante el texto en cuestión. Esto ayuda a los estudiantes a entender el propósito de la lectura y a comprometerse con el proceso.'
                            ),
                            SizedBox(height: 5.0),
                            textoParrafosJustificado(
                              'b.Activación del Conocimiento Previo: Antes de leer, es crucial activar los conocimientos previos de los estudiantes sobre el tema del texto. Esto se puede hacer mediante discusiones, preguntas o actividades que permitan a los estudiantes recordar y compartir lo que ya saben. La activación del conocimiento previo facilita la comprensión al conectar la nueva información con la ya existente.'
                            ),
                            SizedBox(height: 5.0),
                            textoParrafosJustificado(
                              'c.Establecer Predicciones y Realizar Preguntas: Solé sugiere que los estudiantes hagan predicciones sobre el contenido del texto y formulen preguntas sobre lo que esperan aprender. Estas predicciones y preguntas orientan la atención del lector y crean expectativas que guían la lectura.'
                            )
                          ],
                        ),
                      ),
                    SizedBox(height: 5,),
                    subTitulos2('2.Durante la Lectura:'),
                    Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5.0),
                            textoParrafosJustificado(
                              'a.Lectura Grupal e Independiente: Durante la lectura, Isabel Solé recomienda combinar estrategias de lectura grupal e independiente. La lectura grupal permite la discusión y la clarificación de dudas en el momento, mientras que la lectura independiente fomenta la autonomía y la práctica individual de estrategias de comprensión.'
                            ),
                            SizedBox(height: 5.0),
                            textoParrafosJustificado(
                              'b.Identificación de Errores y Lagunas de Conocimiento: Durante la lectura, es importante que los estudiantes identifiquen errores de comprensión y lagunas de conocimiento. Esto puede incluir la relectura de pasajes confusos, la búsqueda de palabras desconocidas o la discusión de partes del texto que no se entienden completamente. Solé enfatiza la importancia de la autorregulación y la metacognición en esta etapa.'
                            ),
                          ],
                        ),
                      ),
                    SizedBox(height: 5,),
                    subTitulos2('3.Después de la Lectura:'),
                    Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5.0),
                            textoParrafosJustificado(
                              'a.Enseñar y Ayudar a Encontrar la Idea Principal y el Resumen: Después de la lectura, los estudiantes deben ser guiados para identificar la idea principal del texto y resumirlo. Solé propone actividades como la elaboración de resúmenes, mapas conceptuales o discusiones en grupo para consolidar la comprensión del texto.'
                            ),
                            SizedBox(height: 5.0),
                            textoParrafosJustificado(
                              'b.Evaluar Formulando y Respondiendo Preguntas: Finalmente, Solé sugiere la evaluación de la comprensión a través de la formulación y respuesta de preguntas sobre el texto. Esta evaluación puede ser tanto autoevaluativa como a través de preguntas formuladas por el profesor, y debe centrarse en verificar que los estudiantes han comprendido los puntos clave y pueden relacionar la información con sus conocimientos previos y nuevos aprendizajes.'
                            ),
                          ],
                        ),
                      ),
                    SizedBox(height: 10,),
                    video_show('jFklK9CERHI'),
                    SizedBox(height: 10,),
                    btnAzul1ConParametro('FINALIZAR',
                    () async{
                      Get.back();
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('modulo_prelectura_activo', true);
                    }
                    )
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
