// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/components/urls.dart';

class SubModuloInferencial extends StatefulWidget {
  const SubModuloInferencial({super.key});

  @override
  State<SubModuloInferencial> createState() => _SubModuloInferencialState();
}

class _SubModuloInferencialState extends State<SubModuloInferencial> {
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
                    titulos1('ESTRATEGIAS DIMENSION INFERENCIAL'),
                    SizedBox(height: 10,),
                    textoParrafosJustificado(
                      'El enfoque principal de este módulo es desarrollar la capacidad de los estudiantes para realizar inferencias, es decir, leer entre líneas y entender información implícita en el texto.'
                    ),
                    textoParrafosJustificado(
                      'Nos basamos en las estrategias propuestas por Isabel Solé (1998) para la lectura inferencial. La lectura inferencial es crucial porque permite a los estudiantes interpretar información no explícita, lo que es vital para una comprensión profunda del texto.'
                    ),
                    textodobleconNegrillaSinPunto(
                      'Promover las Preguntas de los Alumnos Acerca del Texto:',
                      'Solé enfatiza la importancia de que los estudiantes formulen preguntas sobre el texto. Estas preguntas pueden variar dependiendo del texto, el autor y el propósito de la lectura, pero siempre se debe incluir la pregunta clave: "¿Me va a gustar?". Formular preguntas ayuda a los estudiantes a involucrarse activamente con el texto y a desarrollar una comprensión más profunda.'
                    ),
                    SizedBox(height: 20,),
                    titulos2('PREGUNTAS'),
                    SizedBox(height: 10,),
                    subTitulos('Preguntas sugeridas para el análisis de textos:'),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0), // Sangría para el título de las secciones
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('• Escenario:', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0), // Doble sangría para las preguntas
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('¿Dónde ocurre esta historia?', style: TextStyle(fontSize: 16.0)),
                                Text('¿En qué época tiene lugar esta historia?', style: TextStyle(fontSize: 16.0)),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),

                          Text('• Personajes:', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('¿De qué trata la historia?', style: TextStyle(fontSize: 16.0)),
                                Text('¿Cuáles eran los personajes de la historia?', style: TextStyle(fontSize: 16.0)),
                                Text('¿Cuál era el personaje principal o la estrella de la historia?', style: TextStyle(fontSize: 16.0)),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),

                          Text('• Problema:', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('¿Tenían algún problema los personajes de la historia (personas/animales)?', style: TextStyle(fontSize: 16.0)),
                                Text('¿Cuál era el problema fundamental dentro de la historia?', style: TextStyle(fontSize: 16.0)),
                                Text('Al escuchar esta historia, ¿qué os parece que pretendían los personajes?', style: TextStyle(fontSize: 16.0)),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),

                          Text('• Acción:', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('¿Cuáles fueron los hechos importantes dentro de la historia?', style: TextStyle(fontSize: 16.0)),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),

                          Text('• Resolución:', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('¿Cómo resolvieron finalmente su problema los personajes de esta historia?', style: TextStyle(fontSize: 16.0)),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),

                          Text('• Tema:', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('¿Qué era lo que esta historia intentaba comunicarnos?', style: TextStyle(fontSize: 16.0)),
                                Text('¿Qué lecciones pueden extraerse de esta historia?', style: TextStyle(fontSize: 16.0)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    textoParrafosJustificado(
                      'Estas preguntas, propuestas por Cooper (1990), proporcionan una guía completa para explorar y analizar un texto.'
                    ),
                    SizedBox(height: 10,),
                    video_show('rkWb3uAGSSw'),
                    SizedBox(height: 20,),
                    btnAzul1('FINALIZAR', () => Get.back()),
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