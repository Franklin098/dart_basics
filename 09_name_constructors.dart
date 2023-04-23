void main() {
  final ironMan =
      Hero(isAlive: false, name: 'Tony Stark', power: 'Intelligence');

  print('$ironMan');

  // create an object from a json coming from an API

  final Map<String, dynamic> rawJson = {
    'name': 'Bruce Wayne',
    'power': 'Intelligence',
    'isAlive': true
  };

  final batMan = Hero.fromJson(rawJson);

  print('$batMan');
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  // create a constructor with name, to create an object from a json
  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES' : 'NO'}';
  }
}
