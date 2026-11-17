import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';
import 'package:order_action/src/data/repositories/order_action_repository_impl.dart';
import 'package:order_action/src/domain/repositories/order_action_repository.dart';
import 'package:order_action/src/presentation/navigation/order_action_navigator.dart';

void initOrderActionDi(GetIt sl, StackRouter router) {
  sl.registerLazySingleton<OrderActionNavigator>(() => OrderActionNavigatorImpl(router));
  sl.registerLazySingleton<OrderActionRepository>(OrderActionRepositoryImpl.new);
}
