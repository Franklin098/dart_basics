void main() {
  // Map <String,String>
  final pokemon = {
    'name': 'Ditto',
  };

  // Map <String, Object>
  final mix = {
    'name': 'Ditto',
    'hp': 100,
  };

  // Map <Int, String>
  final pokemonMap = {1: 'ABC', 2: 'XYZ', 3: '123', 150: 'AGJH'};

  final Map<String, dynamic> pokemonData = {
    'name': 'Ditto',
    'hp': 100,
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'},
    'powers': ['Imposter']
  };

  print(pokemonData);

  print('Name: ${pokemonData['name']}');

  print('Sprite 1: ${pokemonData['sprites'][1]}');
}
