void main() {
  final Hero wolverine = Hero('Logan', 'Long life');

  final Country guatemala = Country(name: 'Guatemala', code: 502);

  print('$wolverine');
}

class Hero {
  String name;
  String power;

// constructors have the same name as the class
  Hero(String pName, String pPower)
      : name = pName,
        power = pPower; // a way of initializing properties

  @override
  String toString() {
    return '$name - $power';
  }
}

// another way to initialize properties
class Animal {
  String name;
  int height;

  Animal(this.name, this.height);
}

// using parameters with name on the constructor
class Country {
  String name;
  int code;

  Country({required this.name, required this.code});
}
