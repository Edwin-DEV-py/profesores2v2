// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/items.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/views/modulos/subModulos/concluciones.dart';
import 'package:profesores2v2/views/modulos/subModulos/estrategias.dart';
import 'package:profesores2v2/views/modulos/subModulos/introduccion.dart';
import 'package:profesores2v2/views/modulos/subModulos/poslectura.dart';
import 'package:profesores2v2/views/modulos/subModulos/prelectura.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ModulosView extends StatefulWidget {
  const ModulosView({super.key});

  @override
  State<ModulosView> createState() => _ModulosViewState();
}

class _ModulosViewState extends State<ModulosView> {

  bool introduccionActivo = true;
  bool prelecturaActivo = false;
  bool estrategiasActivo = false;
  bool lecturaActivo = false;
  bool postlecturaActivo = false;
  bool conclusionesActivo = false;

  @override
  void initState() {
    super.initState();
    verificarEstadoModulos();
  }

  Future<void> verificarEstadoModulos() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prelecturaActivo = prefs.getBool('modulo_prelectura_activo') ?? false;
      estrategiasActivo = prefs.getBool('modulo_estrategias_activo') ?? false;
      postlecturaActivo = prefs.getBool('modulo_postlectura_activo') ?? false;
      conclusionesActivo = prefs.getBool('modulo_conclusiones_activo') ?? false;
    });
  }

  void mostrarMensajeNoActivo() {
    Get.snackbar(
      'Módulo no activo',
      'Este módulo aún no está activo. Por favor, complete el modulo anterior o recargue la vista.',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('MÓDULOS'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: ListView(
                  children: [
                    itemWithImage1(context, 20 ,'INTRODUCCIÓN', 'assets/instructor.png', 0.2, () => Get.to(() => ModuloIntroduccion(),transition: Transition.downToUp, duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    if (prelecturaActivo)
                      itemWithImage1(context, 30, 'PRELECTURA', 'assets/barras.png', 0.2, () => Get.to(() => ModuloPrelectura(), transition: Transition.downToUp, duration: Duration(milliseconds: 300)))
                    else
                      itemWithImage1(context, 30, 'PRELECTURA', 'assets/barras.png', 0.2, () {mostrarMensajeNoActivo();}),
                    SizedBox(height: 20),
                    if (estrategiasActivo)
                      itemWithImage1(context, 50, 'LECTURA', 'assets/tablero.png', 0.2, () => Get.to(() => ModuloEstrategias(), transition: Transition.downToUp, duration: Duration(milliseconds: 300)))
                    else
                      itemWithImage1(context, 50, 'LECTURA', 'assets/tablero.png', 0.2, () {mostrarMensajeNoActivo();}),
                    SizedBox(height: 20),
                    if (postlecturaActivo)
                      itemWithImage1(context, 24, 'POSTLECTURA', 'assets/ideas.png', 0.2, () => Get.to(() => ModuloPostlectura(), transition: Transition.downToUp, duration: Duration(milliseconds: 300)))
                    else
                      itemWithImage1(context, 24, 'POSTLECTURA', 'assets/ideas.png', 0.2, () {mostrarMensajeNoActivo();}),
                    SizedBox(height: 20),
                    if (conclusionesActivo)
                      itemWithImage1(context, 19, 'CONCLUSIONES', 'assets/final.png', 0.2, () => Get.to(() => ModuloConcluciones(), transition: Transition.downToUp, duration: Duration(milliseconds: 300)))
                    else
                      itemWithImage1(context, 19, 'CONCLUSIONES', 'assets/final.png', 0.2, () {mostrarMensajeNoActivo();}),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
