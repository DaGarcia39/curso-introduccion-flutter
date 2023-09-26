void main() {
  final perro = Perro();

  perro.emitirSonido();
}

// Obliga a las clases que la implementen a sobreescribir sus metodos y propiedades
abstract class Animal {
  int? patas;

  void emitirSonido();
}

class Perro implements Animal {
  int? patas;
  int? colas;

  @override
  void emitirSonido() => print("Sonido de perro");
}
