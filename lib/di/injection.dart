import 'package:get_it/get_it.dart';
import 'package:kukmor_valenki/navigation/app_router.dart';
import 'package:order_action/order_action.dart';
import 'package:showcase/showcase.dart';
import 'package:size_guide/size_guide.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  final router = AppRouter();
  getIt.registerSingleton<AppRouter>(router);

  initShowcaseDi(getIt, router);
  initSizeGuideDi(getIt, router);
  initOrderActionDi(getIt, router);
}
