import 'package:auto_route/auto_route.dart';
import 'package:size_guide/src/presentation/pages/size_guide_page.dart';

part 'size_guide_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class SizeGuideRouterModule extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SizeGuideRoute.page, path: '/size_guide'),
  ];
}
