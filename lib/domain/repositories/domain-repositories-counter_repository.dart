import 'package:namah_counter/domain/entities/domain-entities-counter.dart';

abstract class CounterRepository {
  Future<Counter> getCounter();
  Future<void> incrementCounter();
  Future<void> resetCounter();
}
