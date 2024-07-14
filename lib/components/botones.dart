// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

Widget btnAzul1(String text, VoidCallback onPressed){
  return Wrap(
    alignment: WrapAlignment.center,
    children: [
      ElevatedButton(
        onPressed: onPressed, 
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
          backgroundColor: const Color.fromARGB(255, 24, 63, 139),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ],
  );
}

Widget btnAzul1ConParametro(String text, VoidCallback onPressed){
  return Wrap(
    alignment: WrapAlignment.center,
    children: [
      ElevatedButton(
        onPressed: onPressed, 
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
          backgroundColor: const Color.fromARGB(255, 24, 63, 139),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ],
  );
}

Widget btnAzul2(String text, VoidCallback onPressed, double horizontal){
  return Wrap(
    alignment: WrapAlignment.center,
    children: [
      ElevatedButton(
        onPressed: onPressed, 
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: 10.0),
          backgroundColor: const Color.fromARGB(255, 24, 63, 139),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ],
  );
}

Widget btnAzul2Principales(String text, VoidCallback onPressed, double horizontal){
  return Wrap(
    alignment: WrapAlignment.center,
    children: [
      ElevatedButton(
        onPressed: onPressed, 
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: 10.0),
          backgroundColor: const Color.fromARGB(255, 24, 63, 139),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ],
  );
}
