import 'package:shared_preferences/shared_preferences.dart';

abstract class Preference {
  Future<bool> setBoolValue({
    required String keyName,
    required bool value,
  });

  Future<bool> getBoolValue({
    required String keyName,
  });

  Future<bool> setIntValue({
    required String keyName,
    required int value,
  });

  Future<int> getIntValue({
    required String keyName,
  });

  Future<bool> setDoubleValue({
    required String keyName,
    required double value,
  });

  Future<double> getDoubleValue({
    required String keyName,
  });

  Future<bool> setStringValue({
    required String keyName,
    required String value,
  });

  Future<String> getStringValue({
    required String keyName,
  });

  Future<bool> clearAll();

  Future<bool> clearOne({required String keyName});
}

class Preferences implements Preference {
  @override
  Future<bool> setBoolValue({
    required String keyName,
    required bool value,
  }) async => SharedPreferences.getInstance().then((prefs) => prefs.setBool(keyName, value));

  @override
  Future<bool> getBoolValue({
    required String keyName,
  }) async => SharedPreferences.getInstance().then((prefs) => prefs.getBool(keyName)??false);

  @override
  Future<bool> setIntValue({
    required String keyName,
    required int value,
  }) async => SharedPreferences.getInstance().then((prefs) => prefs.setInt(keyName, value));

  @override
  Future<int> getIntValue({
    required String keyName,
  }) async => SharedPreferences.getInstance().then((prefs) => prefs.getInt(keyName) ?? 0);

  @override
  Future<bool> setDoubleValue({
    required String keyName,
    required double value,
  }) async => SharedPreferences.getInstance().then((prefs) => prefs.setDouble(keyName, value));

  @override
  Future<double> getDoubleValue({
    required String keyName,
  }) async => SharedPreferences.getInstance().then((prefs) => prefs.getDouble(keyName) ?? 0.0);

  @override
  Future<bool> setStringValue({
    required String keyName,
    required String value,
  }) async => SharedPreferences.getInstance().then((prefs) => prefs.setString(keyName, value));

  @override
  Future<String> getStringValue({
    required String keyName,
  }) async => SharedPreferences.getInstance().then((prefs) => prefs.getString(keyName)??'');

  @override
  Future<bool> clearAll() async => SharedPreferences.getInstance().then((prefs) => prefs.clear());

  @override
  Future<bool> clearOne({required String keyName}) async => SharedPreferences.getInstance().then((prefs) => prefs.remove(keyName));
}
