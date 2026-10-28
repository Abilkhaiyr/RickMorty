import 'dart:async';
import 'package:flutter/widgets.dart';
import '../../../core/presentation/scopes/repository_scope.dart';
import '../initialization/logic/composition_root.dart';
import '../initialization/widget/dependencies_scope.dart';
import 'material_context.dart';
import '../../settings/widget/settings_scope.dart';

class App extends StatefulWidget {
  const App({required this.result, super.key});
  final CompositionResult result;
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void dispose() {
    unawaited(widget.result.dependencies.close());
    widget.result.repository.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => DependenciesScope(
    dependencies: widget.result.dependencies,
    child: RepositoryScope(
      repository: widget.result.repository,
      child: const SettingsScope(child: MaterialContext()),
    ),
  );
}
