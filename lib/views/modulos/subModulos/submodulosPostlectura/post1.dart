// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/components/urls.dart';

class Post1 extends StatelessWidget {
  const Post1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('IDEA PRINCIPAL'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    textoParrafosJustificado(
                      'La idea principal es la más importante que el autor quiere expresar respecto al tema. Identificarla es clave para entender el mensaje central del texto.'
                    ),
                    subTitulos2('PASOS PARA ENCONTRAR LA IDEA PRINCIPAL'),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.0),
                          textoParrafosJustificado('1.Recordar el propósito de la lectura'),
                          textodobleconNegrilla(
                            'Paso 1:',
                            'Reflexiona sobre por qué vas a leer el texto. ¿Qué esperas aprender o comprender al finalizar la lectura?'
                          ),
                          SizedBox(height: 10.0),
                          textoParrafosJustificado('2. Clasificación y descarte'),
                          textodobleconNegrilla(
                            'Paso 2:',
                            'Identifica las palabras clave que se repiten o son destacadas en el texto.'
                          ),
                          textodobleconNegrilla(
                            'Paso 3:',
                            'Diferencia entre relevancia textual (información importante dentro del texto) y relevancia contextual (información importante en el contexto más amplio).'
                          ),
                          textodobleconNegrilla(
                            'Paso 4:',
                            'Señala de qué trata el texto antes de comenzar a leer para tener un enfoque claro.'
                          ),
                          SizedBox(height: 10.0),
                          textoParrafosJustificado('3. Lectura y extracción de la idea principal'),
                          textodobleconNegrilla(
                            'Paso 5:',
                            'Lee el texto en voz baja y presta atención a las oraciones iniciales y finales de cada párrafo, ya que suelen contener la idea principal.'
                          ),
                          textodobleconNegrilla(
                            'Paso 6:',
                            'Si la idea principal no está explícita en el texto, formula una posible idea principal y justifica tu razonamiento.'
                          ),
                          SizedBox(height: 10.0),
                          textoParrafosJustificado('4. Material progresivo y observación'),
                          textodobleconNegrilla(
                            'Paso 8:',
                            'Utiliza material de dificultad progresiva para ir aumentando el nivel de comprensión.'
                          ),
                          SizedBox(height: 10.0),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    titulos2('PREGUNTAS'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Cuál es la idea que el autor quiere expresar respecto al tema?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Cuál era el propósito de la lectura, tiene relación a lo que había imaginado'
                    ),
                    textoParrafosJustificado(
                      '3.¿Cuáles son las palabras clave dentro del texto?'
                    ),
                    SizedBox(height: 20,),
                    Widget_url_activities3(
                      'https://forms.gle/dxw4NWMDjNoPnFG57',
                      'SESIÓN #1',
                      'assets/bombilla.png'
                    ),
                    SizedBox(height: 10,),
                    Widget_url_activities3(
                      'https://forms.gle/xNRc7dnyGRecmhak8',
                      'SESIÓN #2',
                      'assets/bombilla.png'
                    ),
                    SizedBox(height: 10,),
                    Widget_url_activities3(
                      'https://forms.gle/UmrdaadpTeWDRB6t5',
                      'SESIÓN #3',
                      'assets/bombilla.png'
                    ),
                    SizedBox(height: 10,),
                    Widget_url_activities3(
                      'https://forms.gle/YAhDB191JkhU49T18',
                      'SESIÓN #4',
                      'assets/bombilla.png'
                    ),
                    SizedBox(height: 10,),
                    Widget_url_activities3(
                      'https://forms.gle/JHR2YKmJPHD6sJA88',
                      'SESIÓN #5',
                      'assets/bombilla.png'
                    ),
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