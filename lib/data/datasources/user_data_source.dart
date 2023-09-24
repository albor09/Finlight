import 'package:finance_manager/data/models/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDataSource {
  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String? getUserData() {
    return _prefs.getString('user_data');
  }

  void setUserData(UserDataModel userData) {
    _prefs.setString('user_data', userData.toJson());
  }
}
