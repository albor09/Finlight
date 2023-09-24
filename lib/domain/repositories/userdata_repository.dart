import 'package:finance_manager/domain/entities/user_data.dart';

abstract class UserDataRepository {
  Future<UserDataEntity?> getUserData();
  Future<void> setUserData(UserDataEntity userData);
}
