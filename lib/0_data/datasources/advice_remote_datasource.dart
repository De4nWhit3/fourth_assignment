import 'package:http/http.dart' as http;

abstract class AdviceRemoteDatasource {
  /// some documentation comment
  Future<AdviceModel> getRandomAdviceFromApi();
}

class AdviceRemoteDatasourceImpl implements AdviceRemoteDatasource {
  final client = http.Client();
  @override
  Future<AdviceModel> getRandomAdviceFromApi() {
    throw UnimplementedError();
  }
}
