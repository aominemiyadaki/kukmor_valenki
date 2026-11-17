import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';
import 'package:showcase/src/data/repositories/showcase_repository_impl.dart';
import 'package:showcase/src/domain/repositories/showcase_repository.dart';
import 'package:showcase/src/presentation/navigation/showcase_navigator.dart';

void initShowcaseDi(GetIt sl, StackRouter router) {
  sl.registerLazySingleton<ShowcaseNavigator>(() => ShowcaseNavigatorImpl(router));
  sl.registerLazySingleton<ShowcaseRepository>(ShowcaseRepositoryImpl.new);
}
