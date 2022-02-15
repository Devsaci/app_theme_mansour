import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<bool?> putBoolean({
    required String key,
    required bool value,
  }) async {
    return await sharedPreferences?.setBool('isDark', value);
  }
}
