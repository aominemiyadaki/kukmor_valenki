import 'package:auto_route/auto_route.dart';

abstract interface class SizeGuideNavigator {}

class SizeGuideNavigatorImpl implements SizeGuideNavigator {
  final StackRouter router;

  const SizeGuideNavigatorImpl(this.router);
}
