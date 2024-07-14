// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unused_element, sized_box_for_whitespace, sort_child_properties_last, use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/videos.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


//Para ver el video
Widget video_show(String url){
  return Column(
    children: [
      Text('Dale click al video para verlo', style: TextStyle(fontStyle: FontStyle.italic),),
      Icon(Icons.arrow_downward_outlined),
      GestureDetector(
        onTap: (){
          Get.to(Video1(url: url), transition: Transition.fade, duration: Duration(seconds: 1));
        },
        child: YoutubePlayer(
          controller: YoutubePlayerController(
            initialVideoId: url,
            flags: const YoutubePlayerFlags(
              autoPlay: false,
              hideControls: true
            )
          )
        ),
      )
    ],
  );
}

//Para redirigir a un quiz
Widget Widget_url_activities(String txt){

  _launchURL(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'No se pudo abrir la URL: $url';
  }else{
      await launchUrl(Uri.parse(url));
    }
  }

  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            _launchURL(txt);
          },
          child: Column(
            children: [
              Image(
              image: AssetImage('assets/quiz.png'),
              fit: BoxFit.cover,
              height: 150,
            ),
            ],
          )
        ),
      ],
    );
  
}


//Para redirigir a un quiz2
Widget Widget_url_activities2(String txt, String txt2){

  _launchURL(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'No se pudo abrir la URL: $url';
  }else{
      await launchUrl(Uri.parse(url));
    }
  }

  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
            children: [
              Image(
              image: AssetImage('assets/form.png'),
              fit: BoxFit.cover,
              height: 100,
            ),
            SizedBox(width: 20,),
            ElevatedButton(
              onPressed: (){
                _launchURL(txt);
              }, 
              child: Text(
                txt2,
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
            )
            ],
          )
      ],
    );
  
}

//Para redirigir a un quiz3
Widget Widget_url_activities3(String txt, String txt2, String txt3){

  _launchURL(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'No se pudo abrir la URL: $url';
  }else{
      await launchUrl(Uri.parse(url));
    }
  }

  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
            children: [
              Image(
              image: AssetImage(txt3),
              fit: BoxFit.cover,
              height: 100,
            ),
            SizedBox(width: 20,),
            ElevatedButton(
              onPressed: (){
                _launchURL(txt);
              }, 
              child: Text(
                txt2,
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
            )
            ],
          )
      ],
    );
  
}

//Para redirigir a una encuesta
Widget Widget_url_encuestas(String txt){

  _launchURL(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'No se pudo abrir la URL: $url';
  }else{
      await launchUrl(Uri.parse(url));
    }
  }

  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            _launchURL(txt);
          },
          child: Column(
            children: [
              Image(
              image: AssetImage('assets/encuesta.png'),
              fit: BoxFit.cover,
              height: 150,
            ),
            ],
          )
        ),
      ],
    );
  
}