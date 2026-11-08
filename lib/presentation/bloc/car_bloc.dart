import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prestige_app/domain/usecases/get_cars.dart';
import 'package:prestige_app/presentation/bloc/car_event.dart';
import 'package:prestige_app/presentation/bloc/car_state.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  final GetCars getCars;

  CarBloc({required this.getCars}) : super(LoadingState()) {
    on<LoadCars>((event, emit) async {
      emit(LoadingState());
      try {
        final cars = await getCars.call();
        emit(SuccessState(cars));
      } catch (e) {
        emit(ErrorState(e.toString()));
      }
    });
  }
}
