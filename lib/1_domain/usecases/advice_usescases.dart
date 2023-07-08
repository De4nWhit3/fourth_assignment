import 'package:dartz/dartz.dart';
import 'package:fourth_assignment/0_data/repositories/advice_repo_impl.dart';
import 'package:fourth_assignment/1_domain/entities/advice_entity.dart';
import 'package:fourth_assignment/1_domain/failures/failures.dart';
import 'package:fourth_assignment/1_domain/repositories/advice_repo.dart';

class AdviceUseCases {
  final AdviceRepo adviceRepo;

  AdviceUseCases({required this.adviceRepo});

  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    return adviceRepo.getAdviceFromDatasource();
    // space for business logic
  }
}
