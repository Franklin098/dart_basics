// Mixins

void main() {
  // A Duck extends from Bird, but also Walks, Swims and Flies
  final duck = Duck(isAlive: true, age: 2, numberOfEggs: 12);

  duck.swim();
  duck.flight();
  duck.walk();
}

abstract class Animal {
  // ALL animals, no matter its type, have at least these generic properties
  bool isAlive;
  int age;

  Animal({required this.isAlive, required this.age});
}

abstract class Mammal extends Animal {
  bool producesMilk;

  Mammal(
      {required super.isAlive, required super.age, required this.producesMilk});
}

enum WaterHabitat { river, ocean }

abstract class Fish extends Animal {
  WaterHabitat waterHabitat;

  Fish(
      {required super.isAlive, required super.age, required this.waterHabitat});
}

abstract class Bird extends Animal {
  int numberOfEggs;

  Bird(
      {required super.isAlive, required super.age, required this.numberOfEggs});
}

// Mixins
abstract class Flier {
  void flight() => print('I am flying');
}

abstract class Walker {
  void walk() => print('I am walking');
}

abstract class Swimmer {
  void swim() => print('I am swimming');
}

// Create Concrete Classes

// A Dolphin is a Mammal who also swims ! "with" keyword is associated with Mixins
class Dolphin extends Mammal with Swimmer {
  Dolphin(
      {required super.isAlive,
      required super.age,
      required super.producesMilk});
}

class Cat extends Mammal with Walker {
  Cat(
      {required super.isAlive,
      required super.age,
      required super.producesMilk});
}

class Duck extends Bird with Swimmer, Walker, Flier {
  Duck(
      {required super.isAlive,
      required super.age,
      required super.numberOfEggs});
}
