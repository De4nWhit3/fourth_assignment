import 'dart:convert';

import 'package:fourth_assignment/0_data/exceptions/exceptions.dart';
import 'package:http/http.dart' as http;

import '../models/advice_model.dart';

abstract class AdviceRemoteDatasource {
  /// some documentation comment
  Future<AdviceModel> getRandomAdviceFromApi();
}

class AdviceRemoteDatasourceImpl implements AdviceRemoteDatasource {
  final http.Client client;

  AdviceRemoteDatasourceImpl({required this.client});

  @override
  Future<AdviceModel> getRandomAdviceFromApi() async {
    final response = await client.get(
      Uri.parse('https://api.flutter-community.com/api/v1/advice'),
      headers: {
        'content-type': 'application/json',
      },
    );

    if (response.statusCode != 200) {
      throw ServerException();
    }

    final responseBody = json.decode(response.body);
    return AdviceModel.fromJson(responseBody);
  }
}
