import 'package:fourth_assignment/1_domain/entities/advice_entity.dart';

class AdviceUseCases {
  Future<AdviceEntity> getAdvice() async {
    await Future.delayed(const Duration(seconds: 3));
    return const AdviceEntity(
        advice: 'Fake advice from use case future 123', id: 1);
  }
}
