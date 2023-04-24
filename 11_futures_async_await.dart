void main() async {
  print('Start of the program');

  mockHttpRequest(url: 'error', delay: 8).then((value) {
    print(
        'Got a success value: $value'); // NOTE: This is going to be printed AFTER "End of the program"
  }).catchError((err) {
    print('Caught an error: $err');
  });

  try {
    final response = await mockHttpRequest(url: 'test', delay: 3);
    print(
        'Got success value using async/await: $response'); // this is going to be printed always BEFORE "End of the program"
  } catch (err) {
    print('Caught an error using asyc/await : $err');
  }

  print('End of the program');
}

Future<String> mockHttpRequest(
    {required String url, required int delay}) async {
  return Future.delayed(Duration(seconds: delay), () {
    if (url == 'error') {
      throw 'There is an error in the response';
    }

    return 'This is the http response';
  });
}
