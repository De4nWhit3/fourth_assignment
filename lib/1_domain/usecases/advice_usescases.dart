import 'package:dartz/dartz.dart';
import 'package:fourth_assignment/1_domain/entities/advice_entity.dart';
import 'package:fourth_assignment/1_domain/failures/failures.dart';

class AdviceUseCases {
  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    await Future.delayed(const Duration(seconds: 3));
    // return right(const AdviceEntity(advice: 'Fake advice', id: 1));
    return left(CacheFailure());
  }
}
