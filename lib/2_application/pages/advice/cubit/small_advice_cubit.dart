import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fourth_assignment/1_domain/usecases/advice_usescases.dart';

import '../../../../1_domain/failures/failures.dart';

part 'small_advice_state.dart';

const serverErrorMessage = 'server error';
const cacheErrorMessage = 'cache failure';
const defaultErrorMessage = 'default failure';

class SmallAdviceCubit extends Cubit<SmallAdviceState> {
  final AdviceUseCases adviceUseCases;

  SmallAdviceCubit({required this.adviceUseCases})
      : super(SmallAdviceInitial());

  void requestAdvice() async {
    emit(AdvicerStateLoading());
    debugPrint("Loading state emitted");
    final failureOrAdvice = await adviceUseCases.getAdvice();

    failureOrAdvice.fold(
        (failure) =>
            emit(AdvicerStateError(errorMsg: _mapFailureToMessage(failure))),
        (advice) => emit(AdvicerStateLoaded(advice: advice.advice)));
    debugPrint('Loaded fake advice');
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverErrorMessage;
      case CacheFailure:
        return cacheErrorMessage;
      default:
        return defaultErrorMessage;
    }
  }
}
