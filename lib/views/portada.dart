// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profesores2v2/views/disclaimer.dart';

class PortadaView extends StatefulWidget {
  const PortadaView({Key? key}) : super(key: key);

  @override
  _PortadaViewState createState() => _PortadaViewState();
}

class _PortadaViewState extends State<PortadaView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: 0.0).animate(_controller);
    _controller.repeat(reverse: true); // Repetir la animación en bucle
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.to(
            Disclaimer(),
            transition: Transition.fadeIn,
            duration: Duration(milliseconds: 300),
          );
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/p1.png',
              fit: BoxFit.cover,
            ),
            Center(
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Opacity(
                    opacity: _animation.value,
                    child: Text(
                      'Toca la pantalla',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0), // Color ajustado para ser visible sobre la imagen
                        shadows: [
                          Shadow(
                            color: Color.fromARGB(255, 17, 0, 255),
                            blurRadius: 2,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
