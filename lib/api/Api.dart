import 'package:http/http.dart' as http;

class Api extends http.BaseClient {
  Api._privateConstructor();

  final String token = "null";
  final http.Client _inner = http.Client();

  static final Api instance = Api._privateConstructor();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers["token"] = this.token;
    return _inner.send(request);
  }
}
