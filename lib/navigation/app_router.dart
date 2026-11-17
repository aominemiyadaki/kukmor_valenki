import 'package:auto_route/auto_route.dart';
import 'package:showcase/showcase.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: ShowcaseRoute.page, path: '/', initial: true),
  ];
}
