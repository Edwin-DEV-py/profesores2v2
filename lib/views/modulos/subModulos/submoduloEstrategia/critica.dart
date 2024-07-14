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
                    titulos1('TRABAJO INDEPENDIENTE'),
                    SizedBox(height: 10,),
                    textoParrafosJustificado(
                      'En este módulo, el estudiante encontrará los textos necesarios para realizar el trabajo individual, ya sea relacionado con la sesión actual en clase o asignado por el maestro como tarea. El estudiante puede descargar, visualizar y responder el contenido de cada sesión, asegurando así su participación y la entrega de su tarea completa para la siguiente sesión.'
                    ),
                    SizedBox(height: 10,),
                    Widget_url_activities2('https://forms.gle/dLCBzcxUVhCe76pz6','SESIÓN #1'),
                    SizedBox(height: 10,),
                    Widget_url_activities2('https://forms.gle/9JoD9254ZTDWAFhv5','SESIÓN #2'),
                    SizedBox(height: 10,),
                    Widget_url_activities2('https://forms.gle/8nuUqjMnrkYGNxPz6','SESIÓN #3'),
                    SizedBox(height: 10,),
                    Widget_url_activities2('https://forms.gle/1MYaa7peRY6iNNKL9','SESIÓN #4'),
                    SizedBox(height: 10,),
                    Widget_url_activities2('https://forms.gle/q4M5yorE7ndygYhi8','SESIÓN #5'),
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