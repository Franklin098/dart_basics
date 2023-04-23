// Avoid to use Dynamic type as much as possible

void main() {
  // Dynamic by default is always nullable, we'll need to check nullability always
  dynamic errorMessage = 'Hello';

  errorMessage = true;

  errorMessage = [1, 2, 3, 4];

  errorMessage = {2, 5, 3, 9};

  errorMessage = () => true;

  print('$errorMessage');
}
