import 'dart:developer' as developer;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

class RouterObserver extends AutoRouterObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      developer.log('Pushed ${route.settings.name}', name: 'RouterObserver');
  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      developer.log(
        'Returned to ${previousRoute?.settings.name}',
        name: 'RouterObserver',
      );
}
