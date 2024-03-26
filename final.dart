import 'dart:io';
import 'Challenger/index.dart';
import 'Menu/index.dart';

void main(){
  print('Ingrese su nombre:');
  String? nombre = stdin.readLineSync()!;
  print("¡Hola, ${nombre}! Por favor, elija un ejercicio:");

  var menu = new Menu();
  menu.MostrarMenu();

  while (true) {
    String? entrada = stdin.readLineSync();
    if (entrada == "q" || entrada == "exit") {
      break;
    }
    int? eleccion = int.tryParse(entrada!);
    if (eleccion != null && eleccion >= 1 && eleccion <= 15) {
      switch (eleccion) {
        case 1:
          var challenger1 = new Challenger1();
          challenger1.run();
          break;

        case 2:
          var challe = new Challenger2();
          challe.run();
          break;

        case 3:
          var challenger3 = new Challenger3();
          challenger3.run();
          break;
        case 4:
          var challenger4 = new Challenger4();
          challenger4.run();
          break;
        case 5:
          var challenger5 = new Challenger5();
          challenger5.run();
          break;
        case 6:
          var challenger6 = new Challenger6();
          challenger6.run();

          break;
        case 7:
          var challenger7 = new Challenger7();
          challenger7.run();

          break;
        case 8:
          var challenger8 = new Challenger8();
          challenger8.run();
          break;
        case 9:
          var challenger9 = new Challenger9();
          challenger9.run();
          break;
        case 10:
          var challenger10 = new Challenger10();
          challenger10.run();
          break;

        case 11:
          var challenger11 = new Challenger11();
          challenger11.run();
          break;
        case 12:
          var challenger12 = new Challenger12();
          challenger12.run();
          break;

        case 13:
          var challenger13 = new Challenger13();
          challenger13.run();
          break;

        case 14:
          var challenger14 = new Challenger14();
          challenger14.run();
          break;

        case 15:
          var challenger15 = new Challenger15();
          challenger15.run();
          break;

        default:
          print("Presiona una tecla para continuar..");
          stdin.readByteSync();
          menu.MostrarMenu();
          break;
      }
    } else {
      print(
          "Opción no válida. Por favor, ingrese un número entre 1 y 15, o 'q' o 'exit' para salir");
    }
  }
  print("Hasta luego");
}
