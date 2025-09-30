import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namah_counter/data/datasources/data-datasources-counter_local_data_source.dart';
import 'package:namah_counter/data/repositories/data-repositories-counter_repository_impl.dart';
import 'package:namah_counter/domain/entities/domain-entities-counter.dart';
import 'package:namah_counter/domain/repositories/domain-repositories-counter_repository.dart';
import 'package:namah_counter/domain/usecases/domain-usecases-counter_usecases.dart';

// Data Source Providers
final counterLocalDataSourceProvider = Provider<CounterLocalDataSource>((ref) {
  return CounterLocalDataSourceImpl();
});

// Repository Providers
final counterRepositoryProvider = Provider<CounterRepository>((ref) {
  return CounterRepositoryImpl(
    localDataSource: ref.watch(counterLocalDataSourceProvider),
  );
});

// Use Case Providers
final getCounterUseCaseProvider = Provider<GetCounter>((ref) {
  return GetCounter(ref.watch(counterRepositoryProvider));
});

final incrementCounterUseCaseProvider = Provider<IncrementCounter>((ref) {
  return IncrementCounter(ref.watch(counterRepositoryProvider));
});

final resetCounterUseCaseProvider = Provider<ResetCounter>((ref) {
  return ResetCounter(ref.watch(counterRepositoryProvider));
});

// State Management
class CounterNotifier extends StateNotifier<AsyncValue<Counter>> {
  final GetCounter _getCounter;
  final IncrementCounter _incrementCounter;
  final ResetCounter _resetCounter;

  CounterNotifier(
    this._getCounter,
    this._incrementCounter,
    this._resetCounter,
  ) : super(const AsyncValue.loading()) {
    loadCounter();
  }

  Future<void> loadCounter() async {
    state = const AsyncValue.loading();
    try {
      final counter = await _getCounter();
      state = AsyncValue.data(counter);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> increment() async {
    await _incrementCounter();
    await loadCounter();
  }

  Future<void> reset() async {
    await _resetCounter();
    await loadCounter();
  }
}

final counterProvider =
    StateNotifierProvider<CounterNotifier, AsyncValue<Counter>>((ref) {
  return CounterNotifier(
    ref.watch(getCounterUseCaseProvider),
    ref.watch(incrementCounterUseCaseProvider),
    ref.watch(resetCounterUseCaseProvider),
  );
});
