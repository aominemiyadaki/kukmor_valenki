import 'package:auto_route/auto_route.dart';

abstract interface class ShowcaseNavigator {}

class ShowcaseNavigatorImpl implements ShowcaseNavigator {
  final StackRouter router;

  const ShowcaseNavigatorImpl(this.router);
}
