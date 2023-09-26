import 'dart:convert';

void main() {
  // Números

  int empleados = 10;
  double pi = 3.1415;

  print(empleados);
  print(pi);

  // Strings

  String nombre = "Daniel";

  print(nombre);
  print(nombre[0]);

  // Boolean

  bool actived = false;

  print(actived);

  if (actived == true) {
    print("El motor esta activo");
  } else {
    print("El motor esta apagado");
  }

  // Listas

  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8];
  print(numeros);

  numeros.add(9);
  print(numeros);

  // Listas de tamaño fijo

  List<int> masNumeros = List.filled(5, 0, growable: false);

  masNumeros[0] = 8;

  print(masNumeros);

  // Solo si growable is true
  // masNumeros.add(2);
  // print(masNumeros);

  // Map

  Map<String, dynamic> persona = {
    "nombre": "Laurent",
    "edad": 22,
    "married": false
  };

  print(persona["nombre"]);
  print(persona["edad"]);
  print(persona["married"]);

  persona.addAll({"Siuu": 1.2});
  print(persona);

  print(persona["edad"]);

  // Functions
  String mensaje = greeting(texto: "Hola", nombre: "Daniel");
  String mensaje2 = greeting2(texto: "Hola", nombre: "Daniel");
  print(mensaje);
  print(mensaje2);

  // CLASSES

  // final Heroe wolverine = Heroe(nombre: "Logan", poder: "Regeneración");

  // print(wolverine);

  final rawJson = '{"nombre" : "Logan", "Poder" : "Regeneración"}';
  Map parsedJson = json.decode(rawJson);

  // print(parseJson);

  final wolverine = Heroe.fromJson(parsedJson);

  print(wolverine);
}

String greeting({String texto = "", String nombre = ""}) {
  return '$texto $nombre';
}

String greeting2({String texto = "", String nombre = ""}) => '$texto $nombre';

class Heroe {
  String? nombre;
  String? poder;

  // Heroe({String nombre = "Sin nombre", String poder = ""}) {
  //   this.nombre = nombre;
  //   this.poder = poder;
  // }

  // Forma corta de definir el constructor
  Heroe({this.nombre = "Sin nombre", this.poder = ""});

  // Constructor con nombre
  Heroe.fromJson(Map parsedJson) {
    nombre = parsedJson['nombre'];
    poder = parsedJson['Poder'];
  }

  @override
  String toString() => "Nombre: ${nombre} - Poder: ${poder}";
}
