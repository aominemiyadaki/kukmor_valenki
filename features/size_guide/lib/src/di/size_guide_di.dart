import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';
import 'package:size_guide/src/data/repositories/size_guide_repository_impl.dart';
import 'package:size_guide/src/domain/repositories/size_guide_repository.dart';
import 'package:size_guide/src/presentation/navigation/size_guide_navigator.dart';

void initSizeGuideDi(GetIt sl, StackRouter router) {
  sl.registerLazySingleton<SizeGuideNavigator>(() => SizeGuideNavigatorImpl(router));
  sl.registerLazySingleton<SizeGuideRepository>(SizeGuideRepositoryImpl.new);
}
