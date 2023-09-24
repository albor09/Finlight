import 'package:finance_manager/data/models/user_data.dart';
import 'package:finance_manager/domain/entities/user_data.dart';
import 'package:finance_manager/domain/repositories/userdata_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDataRepositoryImp implements UserDataRepository {
  UserDataRepositoryImp();

  final String userdata_key = 'user_data';

  @override
  Future<UserDataEntity?> getUserData() async {
    final String? jsonString =
        (await SharedPreferences.getInstance()).getString(userdata_key);
    if (jsonString == null) return Future(() => null);
    UserDataModel userDataModel = UserDataModel.fromJson(jsonString);
    return Future(() => userDataModel.toEntity());
  }

  @override
  Future<void> setUserData(UserDataEntity userData) async {
    (await SharedPreferences.getInstance())
        .setString(userdata_key, UserDataModel.fromEntity(userData).toJson());
  }
}
