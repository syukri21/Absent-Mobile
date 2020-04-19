import 'package:http/http.dart';

class Api extends BaseClient {
  Api._privateConstructor();

  final String token = "null";
  final String url = "http://localhost:3030";
  final Client _inner = Client();

  static final Api instance = Api._privateConstructor();

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    Uri newUrl = this.url + request.url.toString() as Uri;

    Request newRequest = Request(request.method, newUrl);
    newRequest.headers["token"] = this.token;

    return _inner.send(newRequest);
  }
}
