// Streams are flows of information, imagine a progress bar, we stream each of its parts slowly trough time

void main() {
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  });
}
