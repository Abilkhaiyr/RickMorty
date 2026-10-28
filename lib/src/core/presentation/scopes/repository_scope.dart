import 'package:flutter/widgets.dart';
import '../../containers/repository_storage.dart';

class RepositoryScope extends InheritedWidget {
  const RepositoryScope({
    required this.repository,
    required super.child,
    super.key,
  });
  final IRepositoryStorage repository;
  static IRepositoryStorage of(BuildContext context) {
    final scope = context.getInheritedWidgetOfExactType<RepositoryScope>();
    assert(scope != null, 'RepositoryScope is missing');
    return scope!.repository;
  }

  @override
  bool updateShouldNotify(RepositoryScope oldWidget) =>
      repository != oldWidget.repository;
}
