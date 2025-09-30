import 'package:shared_preferences/shared_preferences.dart';

abstract class CounterLocalDataSource {
  Future<int> getCounterValue();
  Future<void> setCounterValue(int value);
  Future<void> resetCounter();
}

class CounterLocalDataSourceImpl implements CounterLocalDataSource {
  static const String _counterKey = 'namah_counter_value';
  
  @override
  Future<int> getCounterValue() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_counterKey) ?? 0;
  }
  
  @override
  Future<void> setCounterValue(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_counterKey, value);
  }
  
  @override
  Future<void> resetCounter() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_counterKey);
  }
}