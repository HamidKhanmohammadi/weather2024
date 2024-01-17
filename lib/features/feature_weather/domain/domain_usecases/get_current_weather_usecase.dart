

import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/use_case.dart';
import '../domain_entities/current_city_entity.dart';
import '../domain_repository/weather_repository.dart';

class GetCurrentWeatherUseCase extends UseCase<DataState<CurrentCityEntity>, String>{
  final WeatherRepository weatherRepository;
  GetCurrentWeatherUseCase(this.weatherRepository);

  @override
  Future<DataState<CurrentCityEntity>> call(String param) {
      return weatherRepository.fetchCurrentWeatherData(param);
  }

}