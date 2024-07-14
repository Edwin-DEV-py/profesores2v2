// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/views/home.dart';

class Disclaimer extends StatelessWidget {
  const Disclaimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.warning, color: Colors.red, size: 200,)
                ],
              ),
              titulos1('AVISO IMPORTANTE'),
              textoParrafos(
                '1. Esta aplicación está diseñada para estudiantes y profesores que abordan temas de comprensión lectora.'
              ),
              textoParrafos(
                '2. Los cuestionarios y actividades deben ser personalizados por el docente de acuerdo a su preferencia; se recomienda emplear Google Forms para la creación de cuestionarios y el envío de actividades, utilizando un correo propio del profesor, ya que esto facilita la estructuración. De lo contrario, si no se sigue esta sugerencia, los cuestionarios y actividades se enviarán al correo de los docentes creadores de la aplicación.'
              ),
              textoParrafos(
                '3. Los cuestionarios y el envío de actividades incluidos en esta aplicación están vinculados a un correo electrónico único, lo que significa que solo el propietario de ese correo puede visualizar el envío de actividades y la puntuación de los cuestionarios.'
              ),
              textoParrafos(
                '4. Para aclarar cualquier duda o inquietud, se puede utilizar los canales de contacto con los propietarios de la aplicación.'
              ),
              SizedBox(height: 10,),
              btnAzul1('CONTINUAR', () => Get.to(() => Home(), transition: Transition.rightToLeftWithFade, duration: Duration(milliseconds: 300))),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
