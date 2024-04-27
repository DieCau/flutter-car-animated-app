import 'package:flutter/material.dart';

// ChangeNotifier permite Notificar los cambios  
class HomeController extends ChangeNotifier {
  
  // Esta_Cerrada_Puerta_Derecha = true
  bool isRightDoorLock = true;

  // Funcion Actualizar_Puerta_Derecha_Cerrada
  void updateRightDoorLock(){

    // Si esta abierta se cierra, si esta cerrada se abre
    isRightDoorLock = !isRightDoorLock;
    
    // Notificar a todos los widgets de los cambios directo a un setState
    notifyListeners();
  }
}
