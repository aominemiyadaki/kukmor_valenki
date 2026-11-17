import 'package:auto_route/auto_route.dart';

abstract interface class OrderActionNavigator {}

class OrderActionNavigatorImpl implements OrderActionNavigator {
  final StackRouter router;

  const OrderActionNavigatorImpl(this.router);
}
