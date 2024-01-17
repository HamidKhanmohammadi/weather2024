

import '../../../../core/resources/data_state.dart';
import '../domain_entities/current_city_entity.dart';

abstract class WeatherRepository{

  Future<DataState<CurrentCityEntity>> fetchCurrentWeatherData(String cityName);

  // Future<DataState<ForecastDaysEntity>> fetchForecastWeatherData(ForecastParams params);
  //
  // Future<List<Data>> fetchSuggestData(cityName);

}