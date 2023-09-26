void main() {
  final superman = Heroe();
  superman.name = 'Clark Kent';

  final luthor = Vallain();
  luthor.name = 'Lex Luthor';
}

class Heroe extends Character {
  int? courage;
}

class Vallain extends Character {
  int? evil;
}

abstract class Character {
  String? name;
  String? power;
}
