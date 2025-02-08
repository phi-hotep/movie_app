import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

class AppSharedPreferences {
  static const kUserMode = 'UserMode';
  static const kIndex = 'UserLastIndex';
  static const kUserLastTab = 'UserLastTab';

  /// Save the User theme mode on the disk
  static void saveAppMode(bool mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(kUserMode, mode);
  }

  /// Save the last index
  static void saveLastIndex(int index) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(kIndex, index);
  }

  /// Save the User last tab on the disk
  static void saveLastTab(int tab) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(kUserLastTab, tab);
  }
}
