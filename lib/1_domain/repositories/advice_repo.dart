import 'package:fourth_assignment/1_domain/entities/advice_entity.dart';

abstract class AdviceRepo {
  Future<AdviceEntity> getAdviceFromDataSource();
}
