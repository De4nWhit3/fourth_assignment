import 'package:fourth_assignment/0_data/datasources/advice_remote_datasource.dart';
import 'package:fourth_assignment/0_data/repositories/advice_repo_impl.dart';
import 'package:fourth_assignment/1_domain/repositories/advice_repo.dart';
import 'package:fourth_assignment/1_domain/usecases/advice_usescases.dart';
import 'package:fourth_assignment/2_application/pages/advice/cubit/small_advice_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.I;

Future<void> init() async {
  // ! application layer
  // ! factory - every time a new fresh instance of that class
  sl.registerFactory(() => SmallAdviceCubit(adviceUseCases: sl()));

  // ! domain layer
  sl.registerFactory(() => AdviceUseCases(adviceRepo: sl()));

  // ! data layer
  sl.registerFactory<AdviceRepo>(
      () => AdviceRepoImpl(adviceRemoteDatasource: sl()));
  sl.registerFactory<AdviceRemoteDatasource>(
      () => AdviceRemoteDatasourceImpl(client: sl()));

  // ! externals
  sl.registerFactory(() => http.Client());
}
