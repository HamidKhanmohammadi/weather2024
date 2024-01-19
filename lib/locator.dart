
import 'package:get_it/get_it.dart';

import 'features/feature_weather/data/data_repository/weather_repositoryImpl.dart';
import 'features/feature_weather/data/data_source/remote/api_provider.dart';
import 'features/feature_weather/domain/domain_repository/weather_repository.dart';
import 'features/feature_weather/domain/domain_usecases/get_current_weather_usecase.dart';
import 'features/feature_weather/presentation/bloc/home_bloc.dart';

GetIt locator = GetIt.instance;

setup(){

  locator.registerSingleton<ApiProvider>(ApiProvider());

  /// repositories
  locator.registerSingleton<WeatherRepository>(WeatherRepositoryImpl(locator()));

  /// use case
  locator.registerSingleton<GetCurrentWeatherUseCase>(GetCurrentWeatherUseCase(locator()));

  locator.registerSingleton<HomeBloc>(HomeBloc(locator()));
}