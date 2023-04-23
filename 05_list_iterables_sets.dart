// List, Iterables and Sets

void main() {
  final numbers = [1, 2, 3, 3, 3, 9, 2, 2, 9];

  print(
      'This is a list, allows duplicates: $numbers, first item: ${numbers.first}');

  final reverseNumbers = numbers.reversed;

  print('This is an Iterable, a collection with order: $reverseNumbers');

  print('Converting iterable to a list: ${reverseNumbers.toList()}');

  print(
      'Converting iterable to a Set (do not contain duplicate numbers): ${reverseNumbers.toSet()}');

  final greaterNumbers = numbers.where((element) => element > 5);

  print(
      'Numbers greater than 5 $greaterNumbers (note that returns an iterable)');

  print(
      'If is surrounded by () -> iterable, [] -> list , {} -> set, {a:b} -> map');
}
