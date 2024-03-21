import 'dart:convert';
import 'dart:io';

void main() {
  print('Hola, como estas bienvenido al calculador de edad:');
  print('Ingrese por favor su nombre:');
  String? nameInput = stdin.readLineSync();
  print('Un gusto conocerte:, $nameInput');
  print('Por favor ingrese su fecha de nacimiento en formato  dd/mm/yyyy:');
  String? birthdayInput = stdin.readLineSync();

  DateTime? dateConverted = _convertToDateTime(birthdayInput!);
  if (dateConverted == null) {
    print('La fecha que ingresaste no es válida: $birthdayInput');
    return;
  }

  var person = Person(
    name: nameInput,
    birthday: dateConverted,
    age: DateTime.now().year - dateConverted.year,
  );
  print('Tu nombre: ${person.name}');
  print('Tu fecha de nacimiento: ${person.birthday}');
  print('¡Tu edad: ${person.age}! años');
}

DateTime? _convertToDateTime(String date) {
  List<String> parts = date.split('/');
  if (parts.length != 3) return null;
  return DateTime.tryParse('${parts[2]}-${parts[1]}-${parts[0]}');
}

class Person {
  final String? name;
  final DateTime? birthday;
  final int? age;

  Person({this.name, this.birthday, this.age});
}
