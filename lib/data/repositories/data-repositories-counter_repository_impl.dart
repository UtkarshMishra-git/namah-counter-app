import 'package:namah_counter/data/datasources/data-datasources-counter_local_data_source.dart';
import 'package:namah_counter/domain/entities/domain-entities-counter.dart';
import 'package:namah_counter/domain/repositories/domain-repositories-counter_repository.dart';

class CounterRepositoryImpl implements CounterRepository {
  final CounterLocalDataSource localDataSource;

  CounterRepositoryImpl({
    required this.localDataSource,
  });

  @override
  Future<Counter> getCounter() async {
    final value = await localDataSource.getCounterValue();
    return Counter(value: value);
  }

  @override
  Future<void> incrementCounter() async {
    final currentValue = await localDataSource.getCounterValue();
    await localDataSource.setCounterValue(currentValue + 1);
  }

  @override
  Future<void> resetCounter() async {
    await localDataSource.resetCounter();
  }
}
