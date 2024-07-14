// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/components/urls.dart';

class SubModuloCritica extends StatefulWidget {
  const SubModuloCritica({super.key});

  @override
  State<SubModuloCritica> createState() => _SubModuloCriticaState();
}

class _SubModuloCriticaState extends State<SubModuloCritica> {
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
                    titulos1('ESTRATEGIAS DIMENSION CRITICA'),
                    SizedBox(height: 10,),
                    textoParrafosJustificado(
                      'Este módulo se enfoca en la interpretación del texto, permitiendo a los estudiantes expresar sus opiniones y reflexiones personales sobre lo leído.'
                    ),
                    textoParrafosJustificado(
                      'Nos basamos en las estrategias propuestas por Isabel Solé (1998) para desarrollar habilidades interpretativas, que son fundamentales para la producción escrita.'
                    ),
                    textodobleconNegrillaSinPunto(
                      '1.Expresar Opiniones y Pensamientos de Manera Libre:',
                      'Aunque nos basamos en Solé para la estructura de la estrategia de producción escrita, la idea central es que los estudiantes siempre deben tener la oportunidad de expresar sus opiniones o pensamientos de manera libre. La forma más efectiva de hacerlo es a través de la producción escrita, donde pueden reflexionar profundamente y articular sus ideas de manera clara.'
                    ),
                    textodobleconNegrillaSinPunto(
                      '2.Leer para Revisar un Escrito Propio:',
                      'Uno de los objetivos de lectura según Isabel Solé es leer para revisar un escrito propio. Este proceso es fundamental para la producción escrita, ya que permite a los estudiantes usar la lectura crítica para evaluar y mejorar sus propios textos, garantizando coherencia, claridad y solidez en sus argumentos.'
                    ),
                    SizedBox(height: 20,),
                    titulos2('PASOS PARA EXPRESAR UNA OPINIÓN'),
                    textoParrafosJustificado(
                      '1.Lectura Crítica: Analizar críticamente el contenido del texto.'
                    ),
                    textoParrafosJustificado(
                      '2.Conexión con Experiencias Personales: Relacionar el texto con experiencias y conocimientos previos.'
                    ),
                    textoParrafosJustificado(
                      '3.Desarrollo de una Opinión Informada: Formular una opinión basada en la evidencia y el análisis del texto.'
                    ),
                    textoParrafosJustificado(
                      '4.Expresión de la Opinión: Expresar claramente la opinión utilizando argumentos bien fundamentados.'
                    ),
                    SizedBox(height: 10,),
                    video_show('Bgmv4GNHMqE'),
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