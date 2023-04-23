// Parameters With Name

void main() {
  String greet =
      greetPerson(name: 'Franklin', message: 'How are you doing mate?');
  print(greet);

  print(greetPerson(name: 'Leo'));
}

// if we use brackets parameters are optional by default, add "required" as needed or default values
String greetPerson({required String name, String message = ''}) {
  return 'Hi, $name.  $message';
}

// In Flutter a lot of parameters are passed by Name

