// Clase Presion de Neumaticos (double presion, int temperatura, bool bajaPresion)
class TyrePressure {
  final double psi;
  final int temp;
  final bool isLowPressure;

  TyrePressure({
    required this.psi, 
    required this.temp, 
    required this.isLowPressure});
}

// Lista de Demo de Presion de Neumaticos
final List<TyrePressure> demoPressureList = [
  TyrePressure(psi: 23.6, temp: 56, isLowPressure: true),
  TyrePressure(psi: 35.0, temp: 41, isLowPressure: false),
  TyrePressure(psi: 34.6, temp: 41, isLowPressure: false),
  TyrePressure(psi: 34.8, temp: 42, isLowPressure: false),
];

