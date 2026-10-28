import 'package:flutter/widgets.dart';
import '../models/dependencies_container.dart';

class DependenciesScope extends InheritedWidget {
  const DependenciesScope({
    required this.dependencies,
    required super.child,
    super.key,
  });
  final DependenciesContainer dependencies;
  static DependenciesContainer of(BuildContext context) {
    final scope = context.getInheritedWidgetOfExactType<DependenciesScope>();
    assert(scope != null, 'DependenciesScope is missing');
    return scope!.dependencies;
  }

  @override
  bool updateShouldNotify(DependenciesScope oldWidget) =>
      dependencies != oldWidget.dependencies;
}
