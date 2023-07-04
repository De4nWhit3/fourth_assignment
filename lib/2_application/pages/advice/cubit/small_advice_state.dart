part of 'small_advice_cubit.dart';

@immutable
abstract class SmallAdviceState {}

class SmallAdviceInitial extends SmallAdviceState {}

class AdvicerStateLoading extends SmallAdviceState {}

class AdvicerStateLoaded extends SmallAdviceState {
  final String advice;

  AdvicerStateLoaded({required this.advice});
}

class AdvicerStateError extends SmallAdviceState {
  final String errorMsg;

  AdvicerStateError({required this.errorMsg});
}
