// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
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
                    //ACA FALTAN LAS SESIONES
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