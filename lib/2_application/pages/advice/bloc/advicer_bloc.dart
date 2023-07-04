import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdvicerStateLoading());
      debugPrint("Loading state emitted");
      await Future.delayed(const Duration(seconds: 3));
      emit(AdvicerStateLoaded(advice: 'Some dummy advice'));
      debugPrint('Loaded fake advice');
      // emit(AdvicerStateError(errorMsg: 'Some dummy error message'));
    });
  }
}
