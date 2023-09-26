void main() {}

abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

abstract class Fly {
  void fly() => print("I'm flyer");
}

abstract class Walk {
  void walk() => print("I'm walker");
}

abstract class Swim {
  void swim() => print("I'm swimmer");
}

class Dolphin extends Mammal implements Swim {
  @override
  void swim() {}
}

class Bat extends Mammal implements Walk, Fly {
  @override
  void walk() {}

  @override
  void fly() {}
}
