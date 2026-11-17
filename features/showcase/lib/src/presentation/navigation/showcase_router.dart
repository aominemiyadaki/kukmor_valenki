import 'package:auto_route/auto_route.dart';
import 'package:showcase/src/presentation/pages/showcase_page.dart';

part 'showcase_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class ShowcaseRouterModule extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: ShowcaseRoute.page, path: '/showcase'),
  ];
}
