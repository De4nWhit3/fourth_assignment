import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'small_advice_state.dart';

class SmallAdviceCubit extends Cubit<SmallAdviceState> {
  SmallAdviceCubit() : super(SmallAdviceInitial());

  void requestAdvice() async {
    emit(AdvicerStateLoading());
    debugPrint("Loading state emitted");
    await Future.delayed(const Duration(seconds: 3));
    emit(AdvicerStateLoaded(advice: 'Some dummy advice'));
    debugPrint('Loaded fake advice');
    // emit(AdvicerStateError(errorMsg: 'Some dummy error message'));
  }
}
