void main() {
  print(getGreeting());

  print('Sum: ${addNumbers(10, 20)}');

  print('Sum: ${addNumbers(10)}');
}

// by default the return is dynamic
greetEveryone() {
  return 'Hello everyone !';
}

// add type
String getGreeting() {
  return 'Hello world';
}

// arrow function
String shortGreeting() => 'Hi !';

// by default arguments are dynamic type, this is not safe
int addTwoNumbers(a, b) {
  return a + b;
}

// optional parameters go with brackets []
int addNumbers(int a, [int b = 0]) {
  return a + b;
}

// another approach
int add2(int a, [int? b]) {
  b = b ?? 0;
  return a + b;
}
