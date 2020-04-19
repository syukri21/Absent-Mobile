import 'package:http/http.dart' as http;

class Api extends http.BaseClient {
  Api._privateConstructor();

  final String token = "null";
  final String url = "http://localhost";
  final http.Client _inner = http.Client();

  static final Api instance = Api._privateConstructor();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    print(request);
    Uri uri = Uri(
      scheme: "http",
      port: 3030,
      host: url,
      path: "/course",
    );

    http.Request newRequest = http.Request(request.method, uri);
    newRequest.headers["token"] = this.token;
    return _inner.send(newRequest);
  }
}
