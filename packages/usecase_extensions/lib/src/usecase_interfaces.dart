// ignore_for_file: avoid_types_as_parameter_names

/// Специальный класс для юзкейсов, которым не нужны параметры на вход
class NoParams {
  const NoParams();
}

/// Базовый контракт для АСИНХРОННЫХ юзкейсов (работа с сетью, БД, SharedPreferences)
abstract interface class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

/// Базовый контракт для СИНХРОННЫХ юзкейсов (вычисления на лету, чтение из кэша памяти)
abstract interface class SyncUseCase<Type, Params> {
  Type call(Params params);
}

/// Базовый контракт для ПОТОКОВЫХ юзкейсов (подписки на сокеты, реактивные стримы БД Drift)
abstract interface class StreamUseCase<Type, Params> {
  Stream<Type> call(Params params);
}
