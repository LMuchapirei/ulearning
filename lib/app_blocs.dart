import 'package:ulearning/app_states.dart';
import 'package:ulearning/app_events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocs extends Bloc<AppEvents, AppStates> {
  AppBlocs() : super(InitStates()) {
    on<IncrementEvent>((event, emit) {
      emit(AppStates(counter: state.counter + 1));
    });
    on<DecrementEvent>((event, emit) {
      emit(AppStates(counter: state.counter - 1));
    });
  }
}
