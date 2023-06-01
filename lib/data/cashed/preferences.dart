
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  Future<bool> setBoolValue({
    required String keyName,
    required bool value,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(keyName, value);
  }

  Future<bool> getBoolValue({
    required String keyName,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(keyName) ?? false;
  }

  Future<bool> setIntValue({
    required String keyName,
    required int value,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setInt(keyName, value);
  }

  Future<int> getIntValue({
    required String keyName,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(keyName) ?? 0;
  }

  Future<bool> setDoubleValue({
    required String keyName,
    required double value,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setDouble(keyName, value);
  }

  Future<double> getDoubleValue({
    required String keyName,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(keyName) ?? 0.0;
  }

  Future<bool> setStringValue({
    required String keyName,
    required String value,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setString(keyName, value);
  }

  Future<String> getStringValue({
    required String keyName,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyName) ?? '';
  }

  Future<bool> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.clear();
  }

  Future<bool> clearOne({required String keyName}) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.remove(keyName);
  }
}
