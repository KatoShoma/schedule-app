import 'package:enum_to_string/enum_to_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum PreferenceKey {
  // ユーザーID
  userId,
}

class Preference {
  final preference = SharedPreferences.getInstance();

  Future<void> reload() async {
    final pref = await preference;
    await pref.reload();
  }

  Future<String> getString(PreferenceKey key) async {
    final pref = await preference;
    final value = pref.getString(EnumToString.convertToString(key)) ?? '';
    return value;
  }

  Future<void> setString(PreferenceKey key, String value) async {
    final pref = await preference;
    await pref.setString(EnumToString.convertToString(key), value);
  }

  Future<void> setStringList(PreferenceKey key, List<String> value) async {
    final pref = await preference;
    await pref.setStringList(EnumToString.convertToString(key), value);
  }

  Future<List<String>> getStringList(PreferenceKey key) async {
    final pref = await preference;
    final value = pref.getStringList(EnumToString.convertToString(key)) ?? [];
    return value;
  }

  Future<void> setBool(PreferenceKey key, bool value) async {
    final pref = await preference;
    await pref.setBool(EnumToString.convertToString(key), value);
  }

  Future<bool> getBool(PreferenceKey key) async {
    final pref = await preference;
    final value = pref.getBool(EnumToString.convertToString(key)) ?? false;
    return value;
  }

  Future<void> addString({
    required PreferenceKey key,
    required String value,
  }) async {
    final pref = await preference;
    final list = pref.getStringList(EnumToString.convertToString(key)) ?? [];
    list.add(value);
    await pref.setStringList(EnumToString.convertToString(key), list);
  }

  Future<void> removeString({
    required PreferenceKey key,
    required String value,
  }) async {
    final pref = await preference;
    final list = pref.getStringList(EnumToString.convertToString(key)) ?? [];
    list.remove(value);
    await pref.setStringList(EnumToString.convertToString(key), list);
  }
}
