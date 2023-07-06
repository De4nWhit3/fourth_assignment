import 'package:dartz/dartz.dart';
import 'package:fourth_assignment/0_data/repositories/advice_repo_impl.dart';
import 'package:fourth_assignment/1_domain/entities/advice_entity.dart';
import 'package:fourth_assignment/1_domain/failures/failures.dart';

class AdviceUseCases {
  final adviceRpo = AdviceRepoImpl();

  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    return adviceRpo.getAdviceFromDataSource();
    // await Future.delayed(const Duration(seconds: 3));
    // // return right(const AdviceEntity(advice: 'Fake advice', id: 1));
    // return left(CacheFailure());
  }
}
