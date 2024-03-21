import 'dart:io';
import 'dart:math';

void main(){
  Circulo circ = new Circulo();

circ.radio = 30;
var resultado_area = circ.area();
var resultado_perimetro = circ.perimetro();

print("El area es: ${resultado_area}, y el perimetro es: ${resultado_perimetro}");

int prev = 0, next = 1, sum;

for (int i = 0; i < 10; i++){
  print(prev);
  sum = prev + next;
  prev = next;
  next = sum;
  }

  try{

    print("Numero a dividir");
    double n = double.parse(stdin.readLineSync()!);

    print("Numero divisor");
    double divisor = double.parse(stdin.readLineSync()!);

    if(divisor == 0) {
      throw ArgumentError("No se puede dividir por cero!");
    }
    
    print("Resultado: ${n/divisor}"); 
  } on ArgumentError catch(e){
    print(e.message);
  }catch(e){
    print("Error desconocido");
  }
  }

abstract class extraCalculations{
   double add10();
}


 abstract class Figura
{
     double area();
    double  perimetro();
}

// se crea una clase que implemente la clase abstracta creada.
class Circulo implements Figura, extraCalculations {
    double? radio;

     @override 
     double area() => pi * radio! * radio!;

    @override 
    double perimetro() => 2 * pi * radio!;
    
      @override
      double add10() {
     return radio! + 10;
      }
}
