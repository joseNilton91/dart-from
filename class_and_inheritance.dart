import 'dart:io';

void main() {
  Cuadrado cuadra = new Cuadrado();
  cuadra.Base = 20;
  cuadra.Altura = 20;
  print("El area es: ${cuadra.Area()}");
  print("El periometro es: ${cuadra.Perimetro()}");
  print("El lado es: ${cuadra.lado}");
}

class Rectangulo {
  double? Base;
  double? Altura;

  double? Area() => Base! * Altura!;
  double? Perimetro() => 2 * Base! + 2 * Altura!;
}

//herencia
class Cuadrado extends Rectangulo {
  set lado(double value) {
    Base = value;
    Altura = value;
  }

  double get lado => Base!;
}
