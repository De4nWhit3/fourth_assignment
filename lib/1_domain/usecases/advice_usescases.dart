class AdviceUseCases {
  Future<String> getAdvice() async {
    await Future.delayed(const Duration(seconds: 3));
    return 'Fake advice from use case future';
  }
}
