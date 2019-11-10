import 'package:simple_calc_with_themes/my_imports.dart';

class Prefs extends ChangeNotifier {
  Future<void> storeInt(String key, int value) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs != null) await prefs.setInt(key, value);
    notifyListeners();
  }

  Future<int> restoreInt(String key, int input) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      final inputValue = prefs.getInt(key) ?? 1;
      input = inputValue;
    } catch (e) {
      print('no restore INT values');
    }
    notifyListeners();
    return input;
  }
}
