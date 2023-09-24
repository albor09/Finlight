import 'package:finance_manager/core/themes/theme_service.dart';
import 'package:finance_manager/data/datasources/local_data_source.dart';
import 'package:finance_manager/data/repositories/category_repository.dart';
import 'package:finance_manager/data/repositories/transaction_repository.dart';
import 'package:finance_manager/data/repositories/userdata_repository.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> setUpLocator() async {
  LocalDataSource localDataSource = LocalDataSource();
  await localDataSource.init();
  locator.registerSingleton(localDataSource);
  locator.registerSingleton(CategoryRepositoryImp());
  locator.registerSingleton(TransactionRepositoryImp());
  locator.registerSingleton(UserDataRepositoryImp());
}
