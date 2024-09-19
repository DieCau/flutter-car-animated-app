// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:car_animated_app/constants.dart';
import 'package:car_animated_app/home_controller.dart';

class HomePage extends StatelessWidget {
  // Clase HomeController() se asigna a final "_controller" tipo HomeController
  final HomeController _controller = HomeController();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        // Reconstruye el arbol de widget cuando se producen cambios
        // Esta animation necesita listenable
        animation: _controller,
        builder: (context, snapshot) {
          return Scaffold(
            body: SafeArea(
              child: LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      // Restricción de altura máxima en vertical x 0.1
                      padding: EdgeInsets.symmetric(vertical: constraints.maxHeight * 0.1),
                      child: SvgPicture.asset('assets/icons/Car.svg', width: double.infinity),
                    ),
                    Positioned(
                      // Posicion Puerta Cerrada al Center y derecha con Restriccion ancho maximo en 0.05
                      right: constraints.maxWidth * 0.05,
                      child: DoorLock(
                        isLock: _controller.isRightDoorLock, 
                        press: _controller.updateRightDoorLock,
                      )
                ),],
                );
              },
            )),
          );
        });
  }
}

class DoorLock extends StatelessWidget {
  const DoorLock({
    super.key, 
    required this.press, 
    required this.isLock,
  });

  final VoidCallback press;
  final bool isLock;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: AnimatedSwitcher(
          duration: defaultDuration,
          switchInCurve: Curves.easeInOutBack,
          transitionBuilder:(child, animation) => 
          ScaleTransition(
            scale: animation, 
            child: child),
          child: isLock
            ? SvgPicture.asset(
              'assets/icons/door_lock.svg', 
              key: const ValueKey('lock'),)
            : SvgPicture.asset(
              'assets/icons/door_unlock.svg', 
              key: const ValueKey('unlock'),)));
  }
}
