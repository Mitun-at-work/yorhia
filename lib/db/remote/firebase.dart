import 'dart:async';

class ApiCaller {
  final url = 'https://api.kanye.rest';

  //
  Future<String> fetchData() async {
    Future.delayed(const Duration(seconds: 10));

    return Future.value(['2'] as FutureOr<String>?);

    //
  }
}
