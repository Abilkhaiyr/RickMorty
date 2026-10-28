import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

/// Application shell; feature pages are provided by the nested router.
class BasePageStart extends StatelessWidget {
  const BasePageStart({super.key});
  @override
  Widget build(BuildContext context) => const AutoRouter();
}
