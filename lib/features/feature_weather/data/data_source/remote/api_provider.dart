import 'package:dio/dio.dart';

import '../../../../../core/utils/constans.dart';

class ApiProvider{

  final Dio _dio = Dio();
  var apiKey = Constants.apiKeys1;

  ///get current weather api
  Future<dynamic> callCurrentWeather(cityName) async {
    var response = await _dio.get(
        '${Constants.baseUrl}/data/2.5/weather',
        queryParameters: {
          'q' : cityName,
          'appid' : apiKey,
          'units' : 'metric'
        }
    );
    print(response.data);
    return response;
  }
}