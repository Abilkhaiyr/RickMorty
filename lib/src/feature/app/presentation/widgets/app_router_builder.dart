import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import '../../router/navigator_observers_factory.dart';

typedef CreateRouter = RootStackRouter Function(BuildContext context);
typedef RouterWidgetBuilder =
    Widget Function(
      BuildContext context,
      RouteInformationParser<UrlState> informationParser,
      RouterDelegate<UrlState> routerDelegate,
      RootStackRouter router,
    );

/// Borrows the composition root's router. DependenciesContainer owns disposal.
class AppRouterBuilder extends StatefulWidget {
  const AppRouterBuilder({
    required this.createRouter,
    required this.builder,
    super.key,
  });
  final CreateRouter createRouter;
  final RouterWidgetBuilder builder;
  @override
  State<AppRouterBuilder> createState() => _AppRouterBuilderState();
}

class _AppRouterBuilderState extends State<AppRouterBuilder> {
  late final RootStackRouter _router = widget.createRouter(context);
  late final _informationParser = _router.defaultRouteParser();
  late final _routerDelegate = _router.delegate(
    navigatorObservers: const NavigatorObserversFactory().call,
  );

  @override
  Widget build(BuildContext context) =>
      widget.builder(context, _informationParser, _routerDelegate, _router);
}
