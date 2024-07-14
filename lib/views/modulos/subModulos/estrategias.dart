// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/items.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/views/modulos/subModulos/submoduloEstrategia/critica.dart';
import 'package:profesores2v2/views/modulos/subModulos/submoduloEstrategia/inferencial.dart';
import 'package:profesores2v2/views/modulos/subModulos/submoduloEstrategia/literal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ModuloEstrategias extends StatelessWidget {
  const ModuloEstrategias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('DURANTE LA LECTURA'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    itemWithImage2(context, 20,'INTRODUCCIÓN', 'assets/book.png', 0.2, () => Get.to(() => SubModuloLiteral(),transition: Transition.downToUp, duration: Duration(milliseconds: 300))),
                    SizedBox(height: 10,),
                    itemWithImage2(context, 30,'COMPARTIDA', 'assets/lup.png', 0.2, () => Get.to(() => SubModuloInferencial(),transition: Transition.downToUp, duration: Duration(milliseconds: 300))),
                    SizedBox(height: 10,),
                    itemWithImage2(context, 18,'INDEPENDIENTE', 'assets/cerebro.png', 0.2, () => Get.to(() => SubModuloCritica(),transition: Transition.downToUp, duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btnAzul1('FINALIZAR',
                    () async{
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('modulo_postlectura_activo', true);
                      Get.back(result: true);
                    }
                    ),
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