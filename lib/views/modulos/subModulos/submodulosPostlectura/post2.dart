// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/components/urls.dart';

class Post2 extends StatelessWidget {
  const Post2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('POSTLECTURA 2'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    textoParrafosJustificado(
                      'Un resumen es una versión breve de un texto que captura las ideas principales y las transmite de manera concisa. Sirve para entender y recordar la información más importante del texto original.'
                    ),
                    subTitulos2(
                      'Para realizar un resumen efectivo, responde las siguientes preguntas:'
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.0),
                          textoParrafosJustificado('1.¿Cuál es el tema de este capítulo?'),
                          textoParrafosJustificado('2.¿Cuáles son las principales ideas que transmite?'),
                          textoParrafosJustificado('3.¿Puedes crear un resumen que responda a estas preguntas?'),
                          SizedBox(height: 10.0),
                          textoParrafosJustificado('Reglas para hacer un resumen:'),
                          textoParrafosJustificado(
                            '1.Omitir:'
                          ),
                          textodobleconNegrilla(
                            'Paso 1: ',
                            'Desecha la información repetitiva o poco relevante.'
                          ),
                          textoParrafosJustificado(
                            '2.Seleccionar:'
                          ),
                          textodobleconNegrilla(
                            'Paso 2: ',
                            'Escoge las ideas más importantes y significativas.'
                          ),
                          textoParrafosJustificado(
                            '3.Generalizar:'
                          ),
                          textodobleconNegrilla(
                            'Paso 3: ',
                            'Agrupa las ideas similares bajo un concepto general.'
                          ),
                          textoParrafosJustificado(
                            '4.Construir:'
                          ),
                          textodobleconNegrilla(
                            'Paso 4: ',
                            'Elabora un párrafo cohesivo que contenga las ideas seleccionadas.'
                          ),
                          SizedBox(height: 10.0),
                          textoParrafosJustificado('Es necesario:'),
                          textodobleconNegrilla(
                            'Aprender a encontrar el tema del párrafo: ',
                            'Identifica el tema central que abarca el párrafo.'
                          ),
                          SizedBox(height: 10.0),
                          textodobleconNegrilla(
                            'Aprender a desechar información repetitiva: ',
                            'Elimina detalles que no aportan valor adicional.'
                          ),
                          SizedBox(height: 10.0),
                          textodobleconNegrilla(
                            'Aprender a agrupar ideas: ',
                            'Determina cómo las ideas se relacionan entre sí y encuentra formas de englobarlas bajo conceptos más amplios'
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    titulos2('PREGUNTAS'),
                    SizedBox(height: 10.0),
                    textoParrafosJustificado(
                      '1.¿Cuál es el tema principal del texto leído?'
                    ),
                    textoParrafosJustificado(
                      '2.¿Cuáles son las principales ideas que transmite?'
                    ),
                    textoParrafosJustificado(
                      '3.Considera de realizar un resumen que responda las preguntas anteriores'
                    ),
                    SizedBox(height: 20,),
                    Widget_url_activities3(
                      'https://forms.gle/dxw4NWMDjNoPnFG57',
                      'SESIÓN #1',
                      'assets/hoja.png'
                    ),
                    SizedBox(height: 20,),
                    Widget_url_activities3(
                      'https://forms.gle/LLwPnFbNmc5s9QJg9',
                      'SESIÓN #2',
                      'assets/hoja.png'
                    ),
                    SizedBox(height: 20,),
                    Widget_url_activities3(
                      'https://forms.gle/LKJ6G84r1S467T3bA',
                      'SESIÓN #3',
                      'assets/hoja.png'
                    ),
                    SizedBox(height: 20,),
                    Widget_url_activities3(
                      'https://forms.gle/j3jMbZZJJ6Gdreif7',
                      'SESIÓN #4',
                      'assets/hoja.png'
                    ),
                    SizedBox(height: 20,),
                    Widget_url_activities3(
                      'https://forms.gle/ED2rnhSyRFFBfKBS7',
                      'SESIÓN #5',
                      'assets/hoja.png'
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