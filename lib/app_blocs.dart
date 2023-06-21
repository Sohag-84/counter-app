// ignore_for_file: avoid_print

import 'package:counter/app_events.dart';
import 'package:counter/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocs extends Bloc<AppEvents, AppState> {
  AppBlocs() : super(InitStates()) {
    on<Increment>((event, emit) {
      emit(AppState(counter: state.counter + 1));
      print("===${state.counter}===");
    });
    on<Decrement>((event, emit) {
      emit(AppState(counter: state.counter - 1));
      print("===${state.counter}===");
    });
  }
}
