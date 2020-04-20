import 'package:http/http.dart' as http;

class ApiReku extends http.BaseClient {
  ApiReku._privateConstructor();

  final String token = "null";
  final http.Client _inner = http.Client();

  static final ApiReku instance = ApiReku._privateConstructor();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers["token"] = this.token;
    return _inner.send(request);
  }
}
