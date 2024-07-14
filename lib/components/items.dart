// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, use_build_context_synchronously, unused_local_variable

import 'dart:io';

//import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'botones.dart';

Widget itemWithImage1(BuildContext context,double horizontal ,String text, String rutaImagen, double sizeImage, VoidCallback onPressed){
  
  double screenWidth = MediaQuery.of(context).size.width;
  
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Image(
        image: AssetImage(rutaImagen),
        width: screenWidth*0.3,
      ),
      SizedBox(width: 20,),
      btnAzul2Principales(text, onPressed, horizontal)
    ],
  );
}

Widget itemWithImage2(BuildContext context,double horizontal ,String text, String rutaImagen, double sizeImage, VoidCallback onPressed){
  
  double screenWidth = MediaQuery.of(context).size.width;
  
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Image(
        image: AssetImage(rutaImagen),
        width: screenWidth*0.3,
      ),
      SizedBox(width: 20,),
      btnAzul2(text, onPressed, horizontal)
    ],
  );
}

Widget itemWithDocument1(BuildContext context, String rutaImagen, String text, String fecha, String pdfFilePath) {

  double screenWidth = MediaQuery.of(context).size.width;

  Future<void> downloadPdf(BuildContext context) async {
    try {
      Directory saveDirectory;
      if (Platform.isAndroid) {
        saveDirectory = Directory('/storage/emulated/0/Download');
      } else if (Platform.isIOS) {
        saveDirectory = await getApplicationDocumentsDirectory();
      } else {
        throw UnsupportedError('Plataforma no soportada');
      }

      final fileName = pdfFilePath.split('/').last;
      final filePath = '${saveDirectory.path}/$fileName';

      final byteData = await DefaultAssetBundle.of(context).load(pdfFilePath);
      final file = await File(filePath).writeAsBytes(byteData.buffer.asUint8List());

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('PDF descargado correctamente en $filePath')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al descargar el PDF: $e')),
      );
    }
  }

  return GestureDetector(
    onTap: () => downloadPdf(context),
    child: Row(
      children: [
        Image(
          image: AssetImage(rutaImagen),
          width: screenWidth * 0.2,
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              fecha,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget ItemCountColumnaVertical(BuildContext context, String imagen, String profe, String tel, String correo){

  double screenWidth = MediaQuery.of(context).size.width;

  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(imagen),
            width: screenWidth*0.5,
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            profe,
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tel,
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            correo,
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      )
    ],
  );
}

Widget itemsReferencia(BuildContext context){

  double screenWidth = MediaQuery.of(context).size.width;

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image(
        image: AssetImage('assets/pdf.png'),
        width: screenWidth*0.2,
      ),
      SizedBox(width: screenWidth*0.1,),
      Image(
        image: AssetImage('assets/word.png'),
        width: screenWidth*0.2,
      ),
      SizedBox(width: screenWidth*0.1,),
      Image(
        image: AssetImage('assets/ruleta.png'),
        width: screenWidth*0.2,
      ),
    ],
  );
}

Widget itemLectura(BuildContext context,  VoidCallback onPressed){

  double screenWidth = MediaQuery.of(context).size.width;

  return InkWell(
    onTap: onPressed,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage('assets/libro2.png'),
          width: screenWidth * 0.3,
        ),
      ],
    ),
  );
}