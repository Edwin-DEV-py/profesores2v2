// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/components/botones.dart';
import 'package:profesores2v2/components/textos.dart';
import 'package:profesores2v2/components/titulos.dart';

class ModuloConcluciones extends StatelessWidget {
  const ModuloConcluciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            titulos2Modulos('CONCLUSIONES'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    textoParrafosJustificado(
                      'Estas estrategias y enfoques propuestos por Isabel Solé (1998) fueron seleccionados porque sus investigaciones proporcionan una base sólida para el desarrollo de habilidades de comprensión lectora. Cada estrategia está respaldada por estudios académicos que han demostrado su efectividad en mejorar diferentes aspectos de la comprensión lectora, desde la activación de conocimientos previos hasta la evaluación postlectura.'
                    ),
                    SizedBox(height: 10,),
                    titulos2('TIPS'),
                    SizedBox(height: 10,),
                    subTitulos(
                      'Tip 1: Prelectura - Prepara tu Mente'
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Activa tus conocimientos previos: Antes de leer, piensa en lo que ya sabes sobre el tema.'
                          ),
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Haz predicciones: Mira el título y subtítulos y trata de predecir de qué tratará el texto.'
                          ),
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Establece un propósito: Define por qué estás leyendo y qué esperas aprender.'
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    subTitulos(
                      'Tip 2: Estrategias Literales - Identifica lo Importante'
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Busca ideas principales y detalles: Usa resaltadoresde diferentes colores para marcar ideas principales (amarillo), detalles secundarios (verde) y términos clave (azul).'
                          ),
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Usa herramientas tecnológicas: Aprovecha aplicaciones de resaltado y anotación para organizar la información mientras lees.'
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    subTitulos(
                      'Tip 3: Estrategias Inferenciales - Lee Entre Líneas'
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Haz preguntas: Pregúntate qué sugiere el autor, por qué los personajes actúan de cierta manera y cuál es el mensaje implícito.'
                          ),
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Busca evidencias: Encuentra pistas en el texto que apoyen tus inferencias.'
                          ),
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Relaciona con tu conocimiento: Usa lo que sabes para entender mejor lo que no está explícitamente dicho.'
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    subTitulos(
                      'Tip 4: Estrategias Interpretativas - Expresa Tu Opinión'
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Analiza críticamente: Reflexiona sobre el contenido y piensa en su significado profundo.'
                          ),
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Conecta con tu experiencia: Relaciona el texto con tus propias vivencias y conocimientos.'
                          ),
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Desarrolla una opinión: Formula y expresa tu opinión basada en el análisis y la evidencia del texto.'
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    subTitulos(
                      'Tip 5: Lectura - Practica con Textos Diversos'
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Elige textos de diferentes niveles: Comienza con textos más fáciles y avanza hacia los más difíciles.'
                          ),
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Aplica estrategias: Usa las estrategias de prelectura, lectura y postlectura para mejorar tu comprensión.'
                          ),
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Reflexiona sobre lo leído: Piensa en cómo cada texto ha contribuido a tu comprensión y conocimiento.'
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    subTitulos(
                      'Tip 6: Postlectura - Evalúa y Mejora'
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Resume lo leído: Escribe un resumen de las ideas principales del texto.'
                          ),
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Responde preguntas de comprensión: Practica con preguntas que te ayuden a consolidar lo aprendido.'
                          ),
                          SizedBox(height: 5.0),
                          textoParrafosJustificadoConPunto(
                            'Realiza evaluaciones: Completa actividades y pos-test para medir tu progreso y ajustar tus estrategias de estudio.'
                          ),
                        ],
                      ),
                    ),
                    //FALTA ENCUESTA
                    SizedBox(height: 20,),
                    btnAzul1('FINALIZAR', () => Get.back()),
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