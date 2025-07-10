import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/crashlytics_wrapper.dart';

enum PrefsKey {
  accessToken('access_token');

  const PrefsKey(this.value);

  final String value;
}

@singleton
class Prefs {
  Prefs(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  Future<bool> setString(PrefsKey key, String value) async =>
      _write<String>(key.value, value);

  Future<bool> setBool(PrefsKey key, bool value) async =>
      _write<bool>(key.value, value);

  Future<bool> setDouble(PrefsKey key, double value) async =>
      _write<double>(key.value, value);

  Future<bool> setInt(PrefsKey key, int value) async =>
      _write<int>(key.value, value);

  Future<bool> setStringList(PrefsKey key, List<String> value) async =>
      _write<List<String>>(key.value, value);

  Future<bool> _write<T>(String key, T value) async {
    try {
      if (value is String) {
        return await _sharedPreferences.setString(key, value);
      } else if (value is bool) {
        return await _sharedPreferences.setBool(key, value);
      } else if (value is double) {
        return await _sharedPreferences.setDouble(key, value);
      } else if (value is int) {
        return await _sharedPreferences.setInt(key, value);
      } else if (value is List<String>) {
        return await _sharedPreferences.setStringList(key, value);
      }
      return false;
    } catch (error) {
      return false;
    }
  }

  /// Return string empty if not found
  String getString(PrefsKey key) => _read<String>(key.value) ?? '';

  /// Return false if not found
  bool getBool(PrefsKey key) => _read<bool>(key.value) ?? false;

  /// Return 0.0 if not found
  double getDouble(PrefsKey key) => _read<double>(key.value) ?? 0.0;

  /// Return 0 empty if not found
  int getInt(PrefsKey key) => _read<int>(key.value) ?? 0;

  /// Return empty list if not found
  List<String> getStringList(PrefsKey key) {
    try {
      return _sharedPreferences.getStringList(key.value) ?? [];
    } catch (error, stack) {
      CrashlyticsWrapper.log(error, stack: stack);
      return [];
    }
  }

  T? _read<T extends Object?>(String key) {
    try {
      return _sharedPreferences.get(key) as T?;
    } catch (error, stack) {
      CrashlyticsWrapper.log(error, stack: stack);
      return null;
    }
  }

  Future<bool> remove(PrefsKey key) async =>
      await _sharedPreferences.remove(key.value);

  bool existKey(PrefsKey key) => _read(key.value) != null;
}
