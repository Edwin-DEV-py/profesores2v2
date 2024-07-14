// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/items.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/components/urls.dart';

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
                    titulos1('ESTRATEGIAS DIMENSION LITERAL'),
                    SizedBox(height: 10,),
                    textoParrafosJustificado(
                      'Este módulo se centra en la comprensión literal del texto, que implica la identificación y recordación de hechos explícitos y detalles mencionados en el texto.'
                    ),
                    textoParrafosJustificado(
                      'Utilizamos estrategias basadas en las propuestas de Isabel Solé (1998) para la identificación de ideas principales y secundarias. Estas estrategias son fundamentales para la comprensión literal, ya que permiten a los estudiantes discernir la información más relevante del texto, lo que es el primer paso hacia una comprensión más profunda.'
                    ),
                    subTitulos('Aspectos clave destacados por Isabel Solé:'),
                    Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5.0),
                            textodobleconNegrilla(
                              'Fijarse en Determinados Aspectos del Texto:',
                              'Solé sugiere ayudar a los estudiantes a prestar atención a aspectos específicos del texto que pueden activar su conocimiento previo. Esto incluye la estrategia de colores y subrayado para resaltar información importante.'
                            ),
                            SizedBox(height: 5.0),
                            textodobleconNegrilla(
                              'Estrategia de Colores y Subrayado:',
                              'Utilizar diferentes colores para subrayar títulos, subtítulos, palabras clave, términos desconocidos y detalles llamativos. Esta técnica facilita la organización visual y la retención de la información.'
                            ),
                            SizedBox(height: 5.0),
                            textodobleconNegrilla(
                              'Investigación Previa a la Lectura:',
                              'Antes de leer, se anima a los estudiantes a investigar términos desconocidos utilizando un diccionario, explorar el autor y su estilo de escritura, y buscar información relacionada con el tema del texto. Esto enriquece su comprensión y les proporciona un contexto más amplio.'
                            ),
                            SizedBox(height: 5.0),
                            textodobleconNegrilla(
                              'Incentivar a Opinar y Predecir:',
                              'Solé enfatiza la importancia de que los estudiantes expresen sus opiniones sobre el texto y hagan predicciones sobre el contenido o la historia. Esto no solo involucra a los estudiantes activamente, sino que también establece expectativas y prepara su mente para la lectura.'
                            )
                          ],
                        ),
                      ),
                    SizedBox(height: 20,),
                    titulos2('HERRAMIENTAS'),
                    SizedBox(height: 10,),
                    textoParrafosJustificado(
                      '1.Resaltado en Línea: Aplicaciones como Adobe Acrobat Reader o herramientas de resaltado en Google Docs.'
                    ),
                    textoParrafosJustificado(
                      '2.Paleta de Colores: Utilizar colores específicos para resaltar información importante:'
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.0),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(fontSize: 16.0, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '• Rojo:',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                                ),
                                TextSpan(
                                  text: 'Títulos y subtítulos. Ayuda a identificar las secciones principales del texto.',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.0),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(fontSize: 16.0, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '•  Amarillo:',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow),
                                ),
                                TextSpan(
                                  text: 'Palabras clave y conceptos importantes. Destaca la información central del contenido.',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.0),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(fontSize: 16.0, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '• Verde:',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                                ),
                                TextSpan(
                                  text: 'Términos desconocidos y nuevas palabras. Facilita la revisión y el aprendizaje de nuevo vocabulario.',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.0),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(fontSize: 16.0, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '• Azul:',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                                ),
                                TextSpan(
                                  text: 'Detalles llamativos o información que despierta interés. Ayuda a recordar aspectos particulares del texto.',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.0),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(fontSize: 16.0, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '• Naranja:',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
                                ),
                                TextSpan(
                                  text: 'Preguntas y predicciones. Se utiliza para anotar reflexiones y anticipaciones sobre el contenido.',
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    itemsReferencia(context),
                    SizedBox(height: 20,),
                    video_show('VONs09PzZEA'),
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