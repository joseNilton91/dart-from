import 'dart:ffi';
import 'dart:io';
import 'dart:math';

// Solicita al usuario un número y eleva este número al cuadrado solo si es positivo
class Challenger1 {
  void run() {
    print("Ingrese un numero");
    int numero = int.parse(stdin.readLineSync()!);

    if (numero > 0) {
      int resultado = numero * numero;
      print("El cuadrado del número ${numero} es: ${resultado}.");
    } else if (numero < 0) {
      print(
          "El número ${numero} no se puede elevar al cuadrado, no es positivo.");
    } else {
      print("El número es cero: ${numero}");
    }
  }
}

//Solicita al usuario dos números. Si el primero es mayor, devuelva su doble, de lo contario devuelva el triple del segundo.
class Challenger2 {
  void run() {
    print("Ingrese el primer numero");
    int numerop = int.parse(stdin.readLineSync()!);
    print("Ingrese el segundo numero");
    int numero2 = int.parse(stdin.readLineSync()!);

    if (numerop > numero2) {
      int resultado = (numerop * 2);
      print("El doble de ${numerop} es ${resultado}.");
    } else if (numerop == numero2) {
      print("Los números son iguales: ${numerop} y ${numero2}.");
    } else {
      int resultado = numero2 * 3;
      print("El Triple de ${numero2} es ${resultado}.");
    }
  }
}

//Pida al usuario un numero. Si es positivo devuelve su raiz cuadrada,de lo contrario, devuelve su cuadrado

class Challenger3 {
  void run() {
    print("Ingrese un numero.");
    double num = double.parse(stdin.readLineSync()!);

    if (num > 0) {
      double raizCuadrada = sqrt(num);
      print("La raiz cuadra del ${num} es: ${raizCuadrada}.");
    } else if (num < 0) {
      double resultado = num * num;
      print("El cuadrado del ${num} numero  es: ${resultado}.");
    } else {
      print("El número  es cero: ${num}");
    }
  }
}

//Pide al usuario el radio de un círculo y calcula su perímetro
class Challenger4 {
  void run() {
    print("Ingrese el radio del circulo");
    double radio = double.parse(stdin.readLineSync()!);
    double perimetro = 2 * pi * radio;
    print("El perimetro del del circulo con radio{radio} es: ${perimetro}");
  }
}

//Solicita al usuario un numero entre 1 y 7 y decir el dia de semana, pero solo dias laborales
class Challenger5 {
  void run() {
    print("Ingrese un numero entre 1 y 7");
    int dia = int.parse(stdin.readLineSync()!);
    switch (dia) {
      case 1:
        print("Lunes(dia laboral)");
        break;
      case 2:
        print("Martes(dia laboral)");
        break;
      case 3:
        print("Miercoles(dia laboral)");
        break;
      case 4:
        print("Jueves(dia laoral)");
        break;
      case 5:
        print("Viernes(dia laboral)");
        break;
      case 6:
        print(" dia no laboral");
        break;
      case 7:
        print(" dia no laboral");
        break;
      default:
        print("Numero invalido.");
        break;
    }
  }
}

//Solicita al usuario su salario anual y, si este excede los 12000,muestra el impuesto a pagar que es el 15% del excedente.
class Challenger6 {
  void run() {
    print(" Por favor ingrese su salario");
    double salario = double.parse(stdin.readLineSync()!);

    double impuesto = 0;
    if (salario > 12000) {
      impuesto = 0.15 * salario;
    } else {
      print("No paga impuesto");
    }
    print("El impuesto a pagar es: ${impuesto}");
  }
}

// Solicita dos números y muestra el residuo de la división del primero entre el segundo
class Challenger7 {
  void run() {
    print("Ingrese un número: ");
    int numero = int.parse(stdin.readLineSync()!);

    print("Ingrese otro número: ");
    int num = int.parse(stdin.readLineSync()!);

    int residuo = numero % num;
    print("El residuo de ${numero} / ${num} es: ${residuo}");
  }
}

//Calcula y muestra la suma de los números pares entre 1 y 50.
class Challenger8 {
  void run() {
    int suma = 0;
    for (int i = 1; i <= 50; i++) {
      if (i % 2 == 0) // Comprobamos si el número es par
      {
        suma = suma + i; //Sumamos el número par a la suma total
      }
    }
    print("La suma de los numeros pares entre 1 y 50 es: ${suma}");
  }
}

//Solicita al usuario los valores para dos fracciones y muestra la diferencia entre esas fracciones.
class Challenger9 {
  void run() {
    try {
      print("Ingrese numerador de la primera fracción:");
      int num1 = int.parse(stdin.readLineSync()!);

      print("Ingrese denominador de la primera fracción:");
      int den1 = int.parse(stdin.readLineSync()!);

      print("Ingrese numerador de la segunda fracción:");
      int num2 = int.parse(stdin.readLineSync()!);

      print("Ingrese denominador de la segunda fracción:");
      int den2 = int.parse(stdin.readLineSync()!);

      Fraccion fraccion1 = new Fraccion(num1, den1);
      Fraccion fraccion2 = new Fraccion(num2, den2);

      Fraccion resultado = fraccion1.Resta(fraccion2);

      print("La resta de ${fraccion1} y ${fraccion2} es: ${resultado}");
    } catch (e) {
      print("Error: ${e}");
    }
  }
}

class Fraccion {
  late int Numerador;
  late int Denominador;

  Fraccion(int numerador, int denominador) {
    if (denominador == 0) {
      throw new ArgumentError("El denominador no puede ser cero");
    }
    this.Numerador = numerador;
    this.Denominador = denominador;
  }

  Fraccion Resta(Fraccion otra) {
    int nuevoNumerador =
        Numerador * otra.Denominador - otra.Numerador * Denominador;
    int nuevoDenominador = Denominador * otra.Denominador;
    return new Fraccion(nuevoNumerador, nuevoDenominador);
  }

  @override
  String toString() {
    return "${Numerador}/${Denominador}";
  }
}

//Pide una palabra al usuario y muestra la longitud de esa palabra.
class Challenger10 {
  void run() {
    print("Ingrese una palabra");
    String palabra = stdin.readLineSync()!;
    int longitud = palabra.length;
    print("La longitud de la palabra ${palabra} es: ${longitud}");
  }
}

//Pide al usuario cuatro números y muestra el promedio.
class Challenger11 {
  void run() {
    print("Ingrese el numero1");
    int numero1 = int.parse(stdin.readLineSync()!);
    print("Ingrese el segundo numero");
    int numero2 = int.parse(stdin.readLineSync()!);
    print("Ingrese el tercer numero");
    int numero3 = int.parse(stdin.readLineSync()!);
    print("Ingrese el cuarto numero");
    int numero4 = int.parse(stdin.readLineSync()!);
    double promedio = ((numero1 + numero2 + numero3 + numero4) / 4);
    print("El promedio es: ${promedio}");
  }
}

// Pide al usuario cinco números y muestra el más pequeño.
class Challenger12 {
  void run() {
    try {
      // Solicita al usuario cinco números
      List<double> numeros = List.filled(5, 0.0);
      for (int i = 0; i < 5; i++) {
        print("Ingrese el número ${i + 1}: ");
        numeros[i] = double.parse(stdin.readLineSync()!);
      }

      // Encuentra el número más pequeño
      double numeroMasPequeno = numeros[0];
      for (int i = 1; i < 5; i++) {
        if (numeros[i] < numeroMasPequeno) {
          numeroMasPequeno = numeros[i];
        }
      }

      print("El número más pequeño es: ${numeroMasPequeno}");
    } catch (e) {
      print("Error: ${e}");
    }
  }
}

//Pide una palabra al usuario y devuelve el número de vocales en esa palabra
class Challenger13 {
  void run() {
    try {
      print("Ingrese una palabra:");
      String palabra = stdin.readLineSync()!;

      // Calcula el número de vocales en la palabra
      int numVocales = ContarVocales(palabra);

      print("La palabra '${palabra}' tiene ${numVocales} vocales.");
    } catch (e) {
      print("Error: ${e}");
    }
  }

  static int ContarVocales(String palabra) {
    // Definir las vocales
    String vocales = "aeiouAEIOU";

    // Inicializar el contador de vocales
    int contador = 0;

    // Contar las vocales en la palabra
    for (int i = 0; i < palabra.length; i++) {
      if (vocales.contains(palabra[i])) {
        contador++;
      }
    }
    return contador;
  }
}

//  Pide un número al usuario y devuelve el factorial de ese número.
class Challenger14 {
  void run() {
    print("Ingrese un número para calcular su factorial: ");
    int numero = int.parse(stdin.readLineSync()!);

    int factorial =
        CalcularFactorial(numero); // Calcular el factorial del número ingresado

    print("El factorial de ${numero} es: ${factorial}"); // Mostrar el factorial
  }

  static int CalcularFactorial(
      int n) // Función para calcular el factorial de un número
  {
    if (n < 0) {
      throw new ArgumentError(
          "El factorial no está definido para números negativos.");
    } else if (n == 0 || n == 1) {
      return 1;
    } else {
      int resultado = 1;
      for (int i = 2; i <= n; i++) {
        resultado *= i;
      }
      return resultado;
    }
  }
}

// Pide un número al usuario y verifica si está en el rango de 10 a 20 (ambos incluidos).
class Challenger15 {
  void run() {
    print("Ingrese un numero");
    int numero = int.parse(stdin.readLineSync()!);

    if (numero >= 10 && numero <= 20) {
      print("El número ${numero} está en el rango de 10 a 20.");
    } else {
      print("El número ${numero} no está en el rango de 10 a 20.");
    }
  }
}