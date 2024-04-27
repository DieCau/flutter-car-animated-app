import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:car_animated_app/home_controller.dart';

class HomePage extends StatelessWidget {
  // Clase HomeController() se asigna a final "_controller" tipo HomeController
  final HomeController _controller = HomeController();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        // Esta animation necesita listenable
        animation: _controller,
        builder: (context, snapshot) {
          return Scaffold(
            body: SafeArea(child: LayoutBuilder(
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
                        child: GestureDetector(
                            onTap: _controller.updateRightDoorLock,
                            child: _controller.isRightDoorLock 
                            ? SvgPicture.asset('assets/icons/door_lock.svg')
                            : SvgPicture.asset('assets/icons/door_unlock.svg')))
                  ],
                );
              },
            )),
          );
        });
  }
}
