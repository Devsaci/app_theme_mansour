import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  void putBoolean({
    required String key,
    required bool value,
  }) {
    sharedPreferences?.setBool('isDark', value);
  }
}
