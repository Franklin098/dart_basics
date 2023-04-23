void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;

  // optional values
  bool? isAlive = true;

  // let Dart to infer the type
  final abilities = ['impostor'];

  // tell to Dart the type on the right side
  final names = <String>['Franklin', 'Fredy', 'Aracely'];

  // tell to dart the type on the left side
  final List<String> cities = ['New York', 'San Francisco'];

// multiline string
  print("""
  $pokemon

  $hp

  $isAlive

  $abilities

  $names

  $cities
  """);
}
