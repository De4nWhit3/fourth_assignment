import 'package:dartz/dartz.dart';
import 'package:fourth_assignment/1_domain/entities/advice_entity.dart';
import 'package:fourth_assignment/1_domain/failures/failures.dart';
import 'package:fourth_assignment/1_domain/repositories/advice_repo.dart';

class AdviceRepoImpl implements AdviceRepo {
  @override
  Future<Either<Failure, AdviceEntity>> getAdviceFromDataSource() {
    // TODO: implement getAdviceFromDataSource
    throw UnimplementedError();
  }
}
