// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget titulos1(String text){
  return Title(
    color: Colors.black, 
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
    )
  );
}

Widget titulos2(String text){
  return Title(
    color: Colors.black, 
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),
    )
  );
}

Widget titulos2Modulos(String text){
  return Column(
    children: [
      SizedBox(
        height: 50,
      ),
      Divider(
        color: Colors.black,
      ),
      titulos1(text),
      Divider(
        color: Colors.black,
      )
    ],
  );
}

Widget subTitulos(String text){
  return Text(
    text,
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold
    ),
  );
}

Widget subTitulos2(String text){
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold
    ),
  );
}