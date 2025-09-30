import 'package:namah_counter/domain/entities/domain-entities-counter.dart';
import 'package:namah_counter/domain/repositories/domain-repositories-counter_repository.dart';

class GetCounter {
  final CounterRepository repository;

  GetCounter(this.repository);

  Future<Counter> call() async {
    return await repository.getCounter();
  }
}

class IncrementCounter {
  final CounterRepository repository;

  IncrementCounter(this.repository);

  Future<void> call() async {
    await repository.incrementCounter();
  }
}

class ResetCounter {
  final CounterRepository repository;

  ResetCounter(this.repository);

  Future<void> call() async {
    await repository.resetCounter();
  }
}
