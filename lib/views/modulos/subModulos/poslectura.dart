// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/items.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/components/urls.dart';
import 'package:profesores2v2/views/modulos/subModulos/submodulosPostlectura/post1.dart';
import 'package:profesores2v2/views/modulos/subModulos/submodulosPostlectura/post2.dart';
import 'package:profesores2v2/views/modulos/subModulos/submodulosPostlectura/post3.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ModuloPostlectura extends StatefulWidget {
  const ModuloPostlectura({super.key});

  @override
  State<ModuloPostlectura> createState() => _ModuloPostlecturaState();
}

class _ModuloPostlecturaState extends State<ModuloPostlectura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('POSTLECTURA'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    video_show('zI_KFPWJzhI'),
                    SizedBox(height: 20,),
                    itemWithImage2(context, 30,'POSTLECTURA 1', 'assets/libro2.png', 0.2, () => Get.to(() => Post1(),transition: Transition.downToUp, duration: Duration(milliseconds: 300))),
                    SizedBox(height: 10,),
                    itemWithImage2(context, 30,'POSTLECTURA 2', 'assets/libro2.png', 0.2, () => Get.to(() => Post2(),transition: Transition.downToUp, duration: Duration(milliseconds: 300))),
                    SizedBox(height: 10,),
                    itemWithImage2(context, 30,'POSTLECTURA 3', 'assets/libro2.png', 0.2, () => Get.to(() => Post3(),transition: Transition.downToUp, duration: Duration(milliseconds: 300))),
                    SizedBox(height: 20,),
                    btnAzul1('FINALIZAR',
                    () async{
                      Get.back();
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('modulo_conclusiones_activo', true);
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