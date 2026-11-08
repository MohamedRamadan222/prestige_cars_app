import 'package:prestige_app/data/models/car.dart';

abstract class CarState {}

class LoadingState extends CarState {}

class SuccessState extends CarState {
  final List<Car> cars;

  SuccessState(this.cars);
}

class ErrorState extends CarState {
  final String errMsg;

  ErrorState(this.errMsg);
}
