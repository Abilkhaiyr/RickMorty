import 'package:flutter/widgets.dart';
import 'router_observers.dart';

class NavigatorObserversFactory {
  const NavigatorObserversFactory();
  List<NavigatorObserver> call() => [HeroController(), RouterObserver()];
}
