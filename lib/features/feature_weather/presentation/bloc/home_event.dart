part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class LoadCurretWeatherEvent extends HomeEvent{

  final String cityName;
  LoadCurretWeatherEvent(this.cityName);
}
