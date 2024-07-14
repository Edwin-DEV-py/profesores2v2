// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/items.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';

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
                    titulos1('LECTURA COMPARTIDA'),
                    SizedBox(height: 10,),
                    textoParrafosJustificado(
                      'En este módulo, el estudiante encontrará los textos correspondientes para realizar el trabajo grupal según la sesión que se esté abordando en clase. El estudiante puede descargar y visualizar el contenido de cada sesión, lo que le permitirá participar activamente y completar las actividades en clase.'
                    ),
                    SizedBox(height: 20,),
                    itemWithDocument2(
                      context,
                      'assets/libro2.png',
                      'SESIÓN #1',
                      '',
                      'assets/SESION#1.pdf'
                    ),
                    SizedBox(height: 10,),
                    itemWithDocument2(
                      context,
                      'assets/libro2.png',
                      'SESIÓN #2',
                      '',
                      'assets/SESION#2.pdf'
                    ),
                    SizedBox(height: 10,),
                    itemWithDocument2(
                      context,
                      'assets/libro2.png',
                      'SESIÓN #3',
                      '',
                      'assets/SESION#3.pdf'
                    ),
                    SizedBox(height: 10,),
                    itemWithDocument2(
                      context,
                      'assets/libro2.png',
                      'SESIÓN #4',
                      '',
                      'assets/SESION#4.pdf'
                    ),
                    SizedBox(height: 10,),
                    itemWithDocument2(
                      context,
                      'assets/libro2.png',
                      'SESIÓN #5',
                      '',
                      'assets/SESION5.pdf'
                    ),
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