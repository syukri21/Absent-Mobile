import 'package:http/http.dart';

class Api extends BaseClient {
  Api._privateConstructor();

  final String token = "null";
  final Client _inner = Client();

  static final Api instance = Api._privateConstructor();

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    request.headers["token"] = this.token;
    return _inner.send(request);
  }
}
