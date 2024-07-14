// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Widget textoParrafos(String text){
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 16,
            height: 1.2,
          ),
      ),
    ),
  );
}

Widget textoParrafosJustificado(String text){
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 16,
            height: 1.2,
          ),
      ),
    ),
  );
}

Widget textoParrafosJustificadoConPunto(String text){
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 0.0),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        '• $text',
        textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 16,
            height: 1.2,
          ),
      ),
    ),
  );
}

Widget textodobleconNegrilla(String txt1, String txt2){
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 16.0, color: Colors.black),
      children: <TextSpan>[
        TextSpan(
          text: '• $txt1',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: txt2,
        ),
      ],
    ),
  );
}

Widget textodobleconNegrillaSinPunto(String txt1, String txt2){
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 16.0, color: Colors.black),
      children: <TextSpan>[
        TextSpan(
          text: txt1,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: txt2,
        ),
      ],
    ),
  );
}