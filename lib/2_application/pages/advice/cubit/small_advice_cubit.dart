import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fourth_assignment/1_domain/entities/advice_entity.dart';
import 'package:fourth_assignment/1_domain/usecases/advice_usescases.dart';

part 'small_advice_state.dart';

class SmallAdviceCubit extends Cubit<SmallAdviceState> {
  SmallAdviceCubit() : super(SmallAdviceInitial());
  final AdviceUseCases adviceUseCases = AdviceUseCases();

  void requestAdvice() async {
    emit(AdvicerStateLoading());
    debugPrint("Loading state emitted");
    final AdviceEntity advice = await adviceUseCases.getAdvice();
    emit(AdvicerStateLoaded(advice: advice.advice));
    debugPrint('Loaded fake advice');
    // emit(AdvicerStateError(errorMsg: 'Some dummy error message'));
  }
}
