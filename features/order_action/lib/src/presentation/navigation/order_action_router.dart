import 'package:auto_route/auto_route.dart';
import 'package:order_action/src/presentation/pages/order_action_page.dart';

part 'order_action_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class OrderActionRouterModule extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OrderActionRoute.page, path: '/order_action'),
  ];
}
