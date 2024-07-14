// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/titulos.dart';
import 'package:profesores2v2/views/principalView.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titulos1('BIENVENIDOS A'),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/portada.jpeg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.width
                ),
              ),
            ),
            SizedBox(height: 20,),
            btnAzul1('INICIAR', () => Get.to(() => PrincipalView(), duration: Duration(milliseconds: 300)))
          ],
        )
      ),
    );
  }
}