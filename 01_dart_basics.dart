void main() {
  var myName = 'Franklin';

  print('Hello $myName');

  String lastName = 'Velasquez';

  print('FullName: $myName ${lastName.toUpperCase()}');

  final myFinal = 'created on execution phase';

  // signature = 'test'; we cannot assign a value to a final variable.

  print('myFinal $myFinal');

  // create a variable that you can initialize later
  late final testLateVariable;

  testLateVariable = 'value';
  // testLateVariable = 'another';  because our late variable is "final", we can just assign it one.

  print('testLateVariable: $testLateVariable');

  const myConst = 'created on app construction phase';
  print('myConst: $myConst');

  // What is the difference between "final" and "const" ?
  // Final variables are created during the App Execution phase. Const variables are created during the App Construction Phase.

  // If I know that a value will NEVER change its value during the whole app -> use "const"
  // If we need to calculate a value at some time during the app life -> use "final"
}
