import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:test_mobile_asm/model/covid_model.dart';

const _baseUrl = 'https://api.covidtracking.com/v1';

class ApiCovidTracking {
  BaseOptions options = BaseOptions(
    baseUrl: _baseUrl,
    receiveDataWhenStatusError: true,
    connectTimeout: 20 * 1000,
    receiveTimeout: 20 * 1000,
  );

  late final Dio _dio = Dio(options);

  Future<List<CovidModel>> getCovidList() async {
    List<CovidModel> covidList = [];
    try {
      Response response = await _dio.get(_baseUrl + '/us/daily.json');
      String responseJson = json.encode(response.data);
      covidList = covidModelFromJson(responseJson);
    } on DioError catch (e) {
      if (e.response != null) {
        print('STATUS: ${e.response?.statusCode}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    return covidList;
  }
}
