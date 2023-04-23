void main() {
  final mySquare = Square(side: 10);

  // we should not be able to set the side to a negative number
  // mySquare.side = -5;
  // for avoid this, we can use a setter

  print('area: ${mySquare.calculateArea()}');
  print('area: ${mySquare.area}');

  // throws an error
  // mySquare.side = -2;

  mySquare.side = 5;

  print('area: ${mySquare.area}');

  // with assertions we can avoid creating a square with negative values
  // final element = Square(side: -6);
}

class Square {
  double _side; // in dart variables starting with _ are private

  Square({required double side})
      : assert(side >= 0, 'side must be non-negative'),
        _side = side;

  double calculateArea() {
    return _side * _side;
  }

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be non-negative';
    _side = value;
  }
}
